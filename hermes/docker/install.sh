#!/bin/bash
# 安装 Hermes Wrapper
# 用法: ./install.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WRAPPER="$SCRIPT_DIR/hermes-wrapper"
LINK_TARGET="$HOME/.local/bin/hermes-wrapper"

# 确保 ~/.local/bin 存在
mkdir -p "$HOME/.local/bin"

# 创建软链接
ln -sf "$WRAPPER" "$LINK_TARGET"

echo "Hermes wrapper 已安装: $LINK_TARGET -> $WRAPPER"
echo "运行 'source ~/.zshrc' 或重新打开终端生效"
