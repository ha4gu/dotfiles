# Aliases

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -la'                             # long list
alias lll='ls -la'                            # 
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias view="vim -R"
alias j="jobs -l"

# Some shortcuts for different directory listings
case "${OSTYPE}" in
    darwin*)
        alias ls='ls -hFG'
        ;;
    *)
        alias ls='ls --human-readable --file-type --color=auto'
        ;;
esac

