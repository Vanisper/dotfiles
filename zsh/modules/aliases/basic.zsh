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
