# rbenv
if type rbenv > /dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# nodenv
if type nodenv > /dev/null 2>&1; then
  eval "$(nodenv init -)"
fi

# pyenv
if type pyenv > /dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# goenv
if type goenv > /dev/null 2>&1; then
  eval "$(goenv init -)"
fi

