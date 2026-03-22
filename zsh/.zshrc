# zsh profile

source_if_exists() {
  local file="$1"
  [[ -f "$file" ]] && source "$file"
}

# Load profile if present
source_if_exists "$HOME/.zprofile"

# Initialize starship prompt if installed
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# Optional plugins
source_if_exists "$HOME/.fzf.zsh"
# source_if_exists /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History
HISTFILE="$HOME/.history"
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

# Yazi: cd to the last directory after quit
## https://yazi-rs.github.io/docs/quick-start
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
# Yazi alias
# alias yi='yazi'

# zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# proxy switch
alias pon='export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890'
alias poff='unset https_proxy http_proxy all_proxy'

# Basic aliases
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

if command -v eza >/dev/null 2>&1; then
  alias ls='eza --hyperlink'
  alias ll='ls -l --icons'
  alias l='ll'
  alias la='l -a'
  alias lh='l -h'
  alias lha='l -ha'
else
  alias ll='ls -lh'
  alias la='ls -A'
  alias lh='ls -lh'
fi

# Git aliases
alias g='git'
alias ginit='git init'
alias ga='git add'
alias gs='git status -s'
alias gc='git commit'
alias gl='git log --color --graph'
alias gt='git tag -a'
alias gf='git fetch'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gshow='git show'
alias gcommit='git commit'
alias gadd='git add'
alias gremote='git remote'
alias gcheckout='git checkout'
alias gclone='git clone'
alias greset='git reset'
alias gmerge='git merge'
alias gbranch='git branch'
alias gcherry='git cherry-pick'
alias gstash='git stash'
alias gpop='git stash pop'

if command -v fzf >/dev/null 2>&1; then
  alias gcb="git branch | fzf --preview 'git show --color=always {-1}' | cut -c 3- | xargs git checkout"
fi
