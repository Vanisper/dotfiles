## fnm - https://github.com/Schniz/fnm?tab=readme-ov-file#shell-setup
# --corepack-enabled：随 node 版本启用 corepack，pnpm/yarn 由当前 node 环境提供并跟随切换
if command -v fnm >/dev/null 2>&1; then
  eval "$(fnm env --use-on-cd --corepack-enabled --shell zsh)"
fi
