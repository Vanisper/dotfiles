# ============================================================
# zsh 模块共享的 helper 函数集合
# ============================================================

# ---------- 文件加载 ----------

# 存在才 source，不存在则静默跳过
# 参数：$1 文件路径
# 用于可选依赖：某台机器未安装该工具时配置不报错
source_if_exists() {
  local file="$1"
  [[ -f "$file" ]] && source "$file"
}

# ---------- PATH 操作 ----------
# 均为幂等操作：重复调用、嵌套 shell 场景不会产生重复条目

# 将目录 prepend 到 PATH 最前（优先级最高）
# 参数：$1 目录路径
# 全局：读写 PATH；无输出
# 幂等手法：给 $PATH 两端补冒号再做子串匹配，等效于按冒号
# 分割后的精确字段匹配，避免 /foo/.local/bin 被误判为已包含
# 来源：rustup 生成的 ~/.cargo/env；uv 安装器生成的
# ~/.local/bin/env 沿用了同一写法
path_prepend() {
  case ":$PATH:" in
    *:"$1":*) ;;
    *) export PATH="$1:$PATH" ;;
  esac
}

# 将目录 append 到 PATH 末尾（优先级低于已有条目）
# 参数与幂等规则同 path_prepend
path_append() {
  case ":$PATH:" in
    *:"$1":*) ;;
    *) export PATH="$PATH:$1" ;;
  esac
}
