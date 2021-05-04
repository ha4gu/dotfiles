# Aliases

# must be interactive
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# git
alias pull='git pull'
alias push='git push'
alias st='git status'
alias allbranches='git -P branch -a'

# locally installed Ruby on Rails
alias r='bin/rails'
alias rs='bin/rails server'
alias rc='bin/rails console'
alias rg='bin/rails generate'
alias rr='bin/rails routes'

# bundle command
alias be='bundle exec'
alias bi='bundle install'

# Docker
alias d='docker'
alias dps='docker ps'

# Docker Compose
alias dc='docker-compose'
alias fig='docker-compose'

# Kubernetes
alias k='kubectl'

# brew
alias brewcombo='brew cleanup && brew update && brew upgrade && brew upgrade --cask'

# youtube-dl
alias ydl='youtube-dl -f bestvideo+bestaudio --merge-output-format mkv'

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
if [[ ${OSTYPE} = darwin* ]]; then
	# BSD ls on macOS
	alias ls='ls -hFG'
elif [[ ${MSYSTEM} = MSYS ]]; then
	# on MSYS for Windows
	alias ls='ls --human-readable --file-type --color=always --ignore="NTUSER.DAT{*}.TM*"'
else
	alias ls='ls --human-readable --file-type --color=always'
fi

