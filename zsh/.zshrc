# zsh profile
#
# 模块入口：common → base → tools → aliases
# 新增模块：在 modules/ 对应分类下新建 .zsh 文件，并在下方注册加载
# 注意：涉及 PATH 的模块顺序影响命令优先级，调整前请确认

ZSH_CONFIG_DIR="${${(%):-%N}:A:h}"

# 通用：helper 函数、profile 加载
source "$ZSH_CONFIG_DIR/modules/common/helpers.zsh"
source "$ZSH_CONFIG_DIR/modules/common/profile.zsh"

# PATH 条目唯一化：重复 prepend 自动收敛（嵌套 shell 场景防叠加），保留先出现的一份
typeset -U PATH path

# 基础：历史记录、shell 补全、local/bin 环境
source "$ZSH_CONFIG_DIR/modules/base/history.zsh"
source "$ZSH_CONFIG_DIR/modules/base/completion.zsh"
source "$ZSH_CONFIG_DIR/modules/base/local-bin.zsh"

# 工具初始化与环境变量
# 终端增强（底层组件 → 应用层）
source "$ZSH_CONFIG_DIR/modules/tools/fzf.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/zoxide.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/starship.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/yazi.zsh"

# 语言工具链（偏后端前置）
source "$ZSH_CONFIG_DIR/modules/tools/rust.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/go.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/java.zsh"

# Node/JS 生态（置后加载使 PATH 优先级最高；pnpm 须先于 fnm）
source "$ZSH_CONFIG_DIR/modules/tools/pnpm.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/fnm.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/bun.zsh"
source "$ZSH_CONFIG_DIR/modules/tools/vite-plus.zsh"

# Android 工具链
source "$ZSH_CONFIG_DIR/modules/tools/android.zsh"

# 杂项
source "$ZSH_CONFIG_DIR/modules/tools/misc.zsh"

# 别名
source "$ZSH_CONFIG_DIR/modules/aliases/basic.zsh"
source "$ZSH_CONFIG_DIR/modules/aliases/proxy.zsh"
source "$ZSH_CONFIG_DIR/modules/aliases/git.zsh"
