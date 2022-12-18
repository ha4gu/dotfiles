# less
export LESS="-I -R -M -x2"

# homeshick
if [ -r "$HOME/.homesick/repos/homeshick/homeshick.sh" ]; then
  source "$HOME/.homesick/repos/homeshick/homeshick.sh"
  source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
fi

# enhancd
if [ -r "$HOME/.enhancd/init.sh" ]; then
  source "$HOME/.enhancd/init.sh"
fi

# gcloud CLI
if [ $(uname -s) = "Darwin" ] \
  && [ -r "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc" ]; then
  source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
  source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"
fi
