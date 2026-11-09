# pnpm 本体由各 node 版本的 npm -g 域提供；PNPM_HOME 是独立版与全局包 bin 目录
export PNPM_HOME="$HOME/Library/pnpm"
path_prepend "$PNPM_HOME"
