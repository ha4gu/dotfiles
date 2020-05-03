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

# gcloud
if [ -r '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc' ]; then
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
fi

# aws cli
if type aws_completer > /dev/null 2>&1; then
  complete -C "$(which aws_completer)" aws
fi

# kubectl
if type kubectl > /dev/null 2>&1; then
  source <(kubectl completion bash)
fi

