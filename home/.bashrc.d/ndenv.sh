# looking for a locally installed ndenv
[ -r "$HOME/.ndenv" ] \
	&& PATH=$PATH:$HOME/.ndenv/bin

# rbenv init
if type ndenv > /dev/null 2>&1; then
  eval "$(ndenv init -)"
fi

