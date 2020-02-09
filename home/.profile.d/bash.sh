# .profile.d/bash.sh

# ログインシェルとして起動したシェルのうち、
# bash にのみ適用させたい処理を記述する。

if [ -n "$BASH_VERSION" ]; then
  :
fi
