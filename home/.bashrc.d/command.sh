# less
export LESS="-I -R -M -x2"

# homeshick
[ -r "$HOME/.homesick/repos/homeshick/homeshick.sh" ] \
  && source "$HOME/.homesick/repos/homeshick/homeshick.sh" \
  && source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

# enhancd
[ -r "$HOME/.enhancd/init.sh" ] \
  && source "$HOME/.enhancd/init.sh"

