# looking for a locally installed rbenv
[ -r "$HOME/.rbenv" ] \
	&& PATH=$PATH:$HOME/.rbenv/bin

# rbenv init
if type rbenv > /dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

