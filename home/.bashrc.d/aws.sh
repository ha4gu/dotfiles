# Enable auto completion of aws cli commands
if type aws_completer > /dev/null 2>&1; then
  complete -C "$(which aws_completer)" aws
fi

