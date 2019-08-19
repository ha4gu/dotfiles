## set variable identifying the chroot you work in (used in the prompt below)
#if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
#	debian_chroot=$(cat /etc/debian_chroot)
#fi


PS1='\
\[\e[0;37m\]$(ret=$?; [ $ret -ne 0 ] && [ $ret -ne 130 ] && echo "\[\e[0;91m\]")# \
\[\e[0;37m\]$(LANG=C date +"%F(%a) %T(UTC%z)" | sed -e "s@00)@)@") \h:$(pwd) \[\e[00m\]\
\[\e[0;33m\]$(if git status &>/dev/null; then echo git:$(git branch | grep ^* | cut -d " "  -f 2-),$(git status -s | grep -v "??" | wc -l); fi)\[\e[00m\]\
\n$([ "$USER" != "yuta" ] && [ "$USER" != "yhashiguchi" ] && echo "\[\e[0;93m\]")\u\[\e[00m\]@\
$(if echo $HOSTNAME | grep -q -e ^sg -e ^ch; then echo "\[\e[0;95m\]"; else echo "\[\e[0;96m\]"; fi)\h \
\[\e[0;94m\]\W\[\e[00m\]\$ \
'

# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#	xterm*|rxvt*)
#		PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#		;;
#	*)
#		;;
#esac

