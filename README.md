# Dotfiles

当前配置面向以下环境：

- terminal : Ghostty
- shell : zsh
- shell-theme : starship
- terminal-file-mgr : yazi

> [!TIP]  
> 终端中有部分场景需要显示特殊字符，安装一种 [Nerd Font](https://www.nerdfonts.com/) 并在终端启用。

## 安装

```bash
cd ~/Documents/GitHub/dotfiles
./install.sh
source ~/.zshrc
```

## 说明

- 安装脚本会在覆盖前自动备份旧文件（`*.bak.<timestamp>`）。
- zsh 配置按模块拆分：`zsh/modules/` 下分 `common`（通用函数与 profile 加载）、`base`（历史记录、shell 补全、local/bin 环境）、`tools`（工具初始化与各语言环境变量）、`aliases`（别名），由 `zsh/.zshrc` 按序加载。新增模块需在 `.zshrc` 中注册一行；涉及 PATH 的模块顺序影响命令优先级，调整前请确认。

## 参考来源

- https://github.com/KURANADO2/dotfiles
