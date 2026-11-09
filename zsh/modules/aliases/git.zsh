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
