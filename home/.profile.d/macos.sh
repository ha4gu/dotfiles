# .profile.d/macos.sh

# ログインシェルとして起動した環境のうち、
# macOS にのみ適用させたい処理を記述する。

if [ "$(uname)" == "Darwin" ]; then
  :
fi
