# Aliases

# must be interactive
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# git
alias pull='git pull'
alias push='git push'
alias st='git status'
alias localbranches='git -P branch'
alias allbranches='git -P branch -a'
alias allstash='git add . && git status && git stash'

# Docker
alias d='docker'
alias dps='docker ps'

# Docker Compose
alias dc='docker compose'
alias dcps='docker compose ps'

# Kubernetes
alias k='kubectl'

# brew
alias brewcombo='brew cleanup && brew update && brew upgrade && brew upgrade --cask'

# Misc
alias whence='type -a'                        # where, of a sort
alias grep='grep --color=always'              # show differences in colour
alias egrep='egrep --color=always'            # show differences in colour
alias fgrep='fgrep --color=always'            # show differences in colour
alias view="vim -R"
alias j="jobs -l"
alias gh="cd ~/"                              # gh = Go Home

# ls
alias ll='ls -la'                             # long list
alias lll='ls -la'                            #
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
# Some shortcuts for different directory listings
if [ $(uname -s) = "Darwin" ]; then
	# BSD ls on macOS
	alias ls='ls -hFG'
else
	alias ls='ls --human-readable --file-type --color=always'
fi
