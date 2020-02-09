# .profile.d/linux.sh

# ログインシェルとして起動した環境のうち、
# Linux にのみ適用させたい処理を記述する。

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  :
fi
