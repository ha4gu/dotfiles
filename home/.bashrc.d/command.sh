
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if type brew > /dev/null 2>&1; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
elif [ -r /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
elif [ -r /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# ssh-pageant
[ -r /usr/bin/ssh-pageant ] \
	&& eval $(/usr/bin/ssh-pageant -r -a "/tmp/.ssh-pageant-$USERNAME")

# homeshick
[ -r "$HOME/.homesick/repos/homeshick/homeshick.sh" ] \
	&& source "$HOME/.homesick/repos/homeshick/homeshick.sh" \
	&& source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

# enhancd
[ -r "$HOME/.enhancd/init.sh" ] \
    && source "$HOME/.enhancd/init.sh"

# Android ADB Command
[ -r "$HOME/Library/Android/sdk/platform-tools" ] \
	&& PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

return 0
