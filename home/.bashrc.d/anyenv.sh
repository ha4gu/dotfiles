# rbenv for Ruby
if type rbenv > /dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# nodenv for Node.js
if type nodenv > /dev/null 2>&1; then
  eval "$(nodenv init -)"
fi

# pyenv for Python
if type pyenv > /dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# goenv for Go
if [ -r "$HOME/.goenv/bin/goenv" ]; then
  export PATH="$HOME/.goenv/bin:$PATH"
fi

if type goenv > /dev/null 2>&1; then
  eval "$(goenv init -)"
fi

