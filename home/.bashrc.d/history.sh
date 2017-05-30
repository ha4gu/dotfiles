function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend

export HISTSIZE=50000
export HISTFILESIZE=50000
export HISTIGNORE="fg*:bg*:history:ls:ll:clear:pwd:*poweroff:*shutdown*:*reboot*"
export HISTTIMEFORMAT='%F %T '
shopt -s cmdhist

