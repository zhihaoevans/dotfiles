# dotfiles

个人 Linux / macOS 开发环境配置，集中管理终端、编辑器、Shell 与命令行工具设置。

**偏好**：JetBrainsMono Nerd Font · Catppuccin Mocha。Neovim 配置基于 LazyVim。

## 配置导航

| 工具 | 目录 | 内容 |
| --- | --- | --- |
| Neovim / LazyVim | [nvim](nvim/) | 插件、主题与编辑器配置 |
| tmux / Zellij | [tmux](tmux/) · [zellij](zellij/) | 终端会话与窗口管理 |
| Ghostty | [ghostty](ghostty/) | 终端配置 |
| Bash / Zsh / Fish | [bash](bash/) · [zsh](zsh/) · [fish](fish/) | Shell 配置 |
| Yazi / broot | [yazi](yazi/) · [broot](broot/) | 文件浏览工具 |
| bat / lsd | [bat](bat/) · [lsd](lsd/) | 输出样式与主题 |
| Vim / macOS | [vim](vim/) · [macos](macos/) | Vim 配置与系统设置记录 |

## 使用方式

先安装需要的工具，再按目录选择配置；本仓库不包含一键安装所有软件的脚本。

```bash
git clone https://github.com/zhihaoevans/dotfiles.git
cd dotfiles
```

使用 GNU Stow 时，根目录 [配置](.stowrc) 默认以 `~/.config` 为目标。可先预览 XDG 配置包的软链接：

```bash
mkdir -p "$HOME/.config"
stow --simulate --verbose --target="$HOME/.config" nvim tmux ghostty yazi
# 确认目标与冲突后，再执行同样的命令并去掉 --simulate。
```

Bash、Zsh 与 Vim 的文件布局和 XDG 配置不同，不能把所有目录直接链接到同一目标。先阅读相应配置，备份已有文件，再单独选择目标路径。不同系统的字体、工具版本和插件依赖需要分别配置。

## 修改与维护

- 按工具目录整理改动，保持配置与插件锁文件一起更新。
- Neovim 的上游安装说明见 [nvim/README.md](nvim/README.md)。
- 提交配置前移除本机路径中不应公开的信息、令牌和账号凭据。
