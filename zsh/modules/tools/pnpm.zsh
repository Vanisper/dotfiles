# pnpm 本体由 fnm 的 corepack 提供（见 fnm.zsh），随 node 版本切换并识别 package.json 的 packageManager 字段
# PNPM_HOME 是全局包 bin 目录，同时留有独立安装版 pnpm；append 到末尾避免抢占 corepack shim
export PNPM_HOME="$HOME/Library/pnpm"
path_append "$PNPM_HOME"
