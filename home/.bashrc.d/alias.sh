# Aliases

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Misc
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color=always'              # show differences in colour
alias egrep='egrep --color=always'            # show differences in colour
alias fgrep='fgrep --color=always'            # show differences in colour
alias ll='ls -la'                             # long list
alias lll='ls -la'                            # 
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias view="vim -R"
alias j="jobs -l"
alias gh="cd ~/"                              # gh = Go Home

# Some shortcuts for different directory listings
if [[ ${OSTYPE} = darwin* ]]; then
	alias ls='ls -hFG'
elif [[ ${MSYSTEM} = MSYS ]]; then
	alias ls='ls --human-readable --file-type --color=always --ignore="NTUSER.DAT{*}.TM*"'
else
	alias ls='ls --human-readable --file-type --color=always'
fi

