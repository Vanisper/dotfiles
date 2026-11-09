# Load profile if present
# 仅非登录 shell 需要手动加载：登录 shell 系统已加载过 .zprofile，避免重复执行
[[ ! -o login ]] && source_if_exists "$HOME/.zprofile"
