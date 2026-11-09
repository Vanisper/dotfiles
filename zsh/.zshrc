# zsh profile
#
# 模块入口：common → base → tools → aliases
# 新增模块：在 modules/ 对应分类下新建 .zsh 文件，并在下方注册加载
# 注意：涉及 PATH 的模块顺序影响命令优先级，调整前请确认

ZSH_CONFIG_DIR="${${(%):-%N}:A:h}"

# 通用：helper 函数、profile 加载
source "$ZSH_CONFIG_DIR/modules/common/helpers.zsh"
source "$ZSH_CONFIG_DIR/modules/common/profile.zsh"

# 基础：历史记录、shell 补全、local/bin 环境
source "$ZSH_CONFIG_DIR/modules/base/history.zsh"
source "$ZSH_CONFIG_DIR/modules/base/completion.zsh"
source "$ZSH_CONFIG_DIR/modules/base/local-bin.zsh"

# 工具初始化与环境变量
source "$ZSH_CONFIG_DIR/modules/tools/starship.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/fnm.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/fzf.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/zoxide.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/go.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/java.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/android.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/bun.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/kimi-code.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/pnpm.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/vite-plus.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/yazi.zsh"

# 别名
source "$ZSH_CONFIG_DIR/modules/aliases/basic.zsh"
source "$ZSH_CONFIG_DIR/modules/aliases/proxy.zsh"
source "$ZSH_CONFIG_DIR/modules/aliases/git.zsh"
