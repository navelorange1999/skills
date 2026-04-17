#!/usr/bin/env bash
#
# install.sh — symlink skills from this repo into agent skill directories.
#
# Usage:
#   ./install.sh                   install to all supported agents
#   ./install.sh claude            install to claude only
#   ./install.sh claude codex      install to both explicitly
#   ./install.sh --force           replace stale symlinks
#   ./install.sh --dry-run         show what would happen, change nothing
#   ./install.sh --help            show this help
#
# Supported agents:
#   claude   ~/.claude/skills/
#   codex    ~/.agents/skills/
#
# Behavior:
#   - Auto-discovers every <repo>/<name>/SKILL.md and symlinks its directory.
#   - Idempotent: re-running is safe; already-correct links are left alone.
#   - Refuses to overwrite non-symlinks. Stale symlinks require --force.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SUPPORTED_AGENTS=(claude codex)

usage() {
    sed -n '3,/^$/p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//; s/^#$//'
}

agent_target_dir() {
    case "$1" in
        claude) echo "$HOME/.claude/skills" ;;
        codex)  echo "$HOME/.agents/skills" ;;
        *) return 1 ;;
    esac
}

is_supported_agent() {
    local candidate="$1"
    local a
    for a in "${SUPPORTED_AGENTS[@]}"; do
        [[ "$a" == "$candidate" ]] && return 0
    done
    return 1
}

FORCE=0
DRY_RUN=0
AGENTS=()

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help) usage; exit 0 ;;
        -f|--force) FORCE=1; shift ;;
        -n|--dry-run) DRY_RUN=1; shift ;;
        -*) echo "Unknown option: $1" >&2; exit 1 ;;
        *)
            if is_supported_agent "$1"; then
                AGENTS+=("$1")
                shift
            else
                echo "Unknown agent: $1 (supported: ${SUPPORTED_AGENTS[*]})" >&2
                exit 1
            fi
            ;;
    esac
done

if [[ ${#AGENTS[@]} -eq 0 ]]; then
    AGENTS=("${SUPPORTED_AGENTS[@]}")
fi

SKILLS=()
for skill_md in "$SCRIPT_DIR"/*/SKILL.md; do
    [[ -f "$skill_md" ]] || continue
    SKILLS+=("$(dirname "$skill_md")")
done

if [[ ${#SKILLS[@]} -eq 0 ]]; then
    echo "No skills found in $SCRIPT_DIR (looking for <name>/SKILL.md)" >&2
    exit 1
fi

run() {
    if [[ $DRY_RUN -eq 1 ]]; then
        printf '  [dry-run] %s\n' "$*"
    else
        "$@"
    fi
}

install_one() {
    local skill_dir="$1"
    local target_dir="$2"
    local skill_name link_path current_target
    skill_name="$(basename "$skill_dir")"
    link_path="$target_dir/$skill_name"

    if [[ -L "$link_path" ]]; then
        current_target="$(readlink "$link_path")"
        if [[ "$current_target" == "$skill_dir" ]]; then
            printf '  =  %-32s (already linked)\n' "$skill_name"
            return 0
        fi
        if [[ $FORCE -eq 1 ]]; then
            printf '  ~  %-32s (replacing stale link)\n' "$skill_name"
            run rm "$link_path"
        else
            printf '  !  %-32s (points to %s — use --force to replace)\n' \
                "$skill_name" "$current_target"
            return 0
        fi
    elif [[ -e "$link_path" ]]; then
        printf '  !  %-32s (exists as non-symlink — refusing to overwrite)\n' \
            "$skill_name"
        return 0
    fi

    run ln -s "$skill_dir" "$link_path"
    printf '  +  %-32s (linked)\n' "$skill_name"
}

for agent in "${AGENTS[@]}"; do
    target_dir="$(agent_target_dir "$agent")"
    printf '\n== %s  ->  %s\n' "$agent" "$target_dir"
    run mkdir -p "$target_dir"
    for skill_dir in "${SKILLS[@]}"; do
        install_one "$skill_dir" "$target_dir"
    done
done

if [[ $DRY_RUN -eq 1 ]]; then
    printf '\n(dry run — nothing changed)\n'
fi
