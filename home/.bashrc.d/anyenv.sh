# rbenv for Ruby
if [ -e ~/.rbenv/bin/rbenv ]; then
  eval "$(~/.rbenv/bin/rbenv init - bash)"
elif type rbenv > /dev/null 2>&1; then
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
