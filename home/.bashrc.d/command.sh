# bash completion
if type brew > /dev/null 2>&1; then
  # for homebrew on macOS
  if [ -r $(brew --prefix)/etc/profile.d/bash_completion.sh ]; then
    export BASH_COMPLETION_COMPAT_DIR=$(brew --prefix)/etc/bash_completion.d
    . $(brew --prefix)/etc/profile.d/bash_completion.sh
  fi
elif [ -r /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
elif [ -r /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# homeshick
[ -r "$HOME/.homesick/repos/homeshick/homeshick.sh" ] \
  && source "$HOME/.homesick/repos/homeshick/homeshick.sh" \
  && source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

# enhancd
[ -r "$HOME/.enhancd/init.sh" ] \
  && source "$HOME/.enhancd/init.sh"

# ssh-pageant on Windows
[ -r /usr/bin/ssh-pageant ] \
  && eval $(/usr/bin/ssh-pageant -r -a "/tmp/.ssh-pageant-$USERNAME")

# lesspipe
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

return 0
