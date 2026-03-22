#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NOW="$(date +%Y%m%d_%H%M%S)"

backup_if_exists() {
  local target="$1"
  if [[ -L "$target" || -f "$target" || -d "$target" ]]; then
    local backup="${target}.bak.${NOW}"
    mv "$target" "$backup"
    echo "[backup] $target -> $backup"
  fi
}

link_file() {
  local src="$1"
  local dst="$2"
  mkdir -p "$(dirname "$dst")"
  backup_if_exists "$dst"
  ln -s "$src" "$dst"
  echo "[link] $dst -> $src"
}

link_file "$ROOT/zsh/.zshrc" "$HOME/.zshrc"
link_file "$ROOT/starship/starship.toml" "$HOME/.config/starship.toml"
link_file "$ROOT/yazi/yazi.toml" "$HOME/.config/yazi/yazi.toml"
link_file "$ROOT/yazi/keymap.toml" "$HOME/.config/yazi/keymap.toml"
link_file "$ROOT/yazi/theme.toml" "$HOME/.config/yazi/theme.toml"

echo
echo "Done. Run: source ~/.zshrc"
