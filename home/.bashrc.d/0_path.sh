# Homebrew
if [ $(uname -s) = "Darwin" ]; then
  case $(uname -m) in
    "arm64" ) eval "$(/opt/homebrew/bin/brew shellenv)" ;;
    "x86_64") export PATH="/usr/local/sbin:$PATH" ;;
  esac
fi

# add ~/.local for my locally installed programs
export PATH="$HOME/.local/bin:$PATH"
export MANPATH="$HOME/.local/share/man:$MANPATH"
export INFOPATH="$HOME/.local/share/info:$INFOPATH"
export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
