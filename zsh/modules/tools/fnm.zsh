## fnm - https://github.com/Schniz/fnm?tab=readme-ov-file#shell-setup
if command -v fnm >/dev/null 2>&1; then
  eval "$(fnm env --use-on-cd --shell zsh)"
fi
