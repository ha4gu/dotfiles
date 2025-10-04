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

# radiko
function rdk-dlp() {
  # 引数がない場合には即終了
  if [ $# -eq 0 ]; then
    echo "URLを指定してください"
    return 1
  fi

  # 各URLに対してループ処理
  for url in "$@"; do
    echo "Processing URL: $url"
    yt-dlp -N 30 --embed-metadata --embed-thumbnail -o "%(title)s %(timestamp+32400>%Y-%m-%d_%H%M)s [%(id)s].%(ext)s" "$url"
  done
}
