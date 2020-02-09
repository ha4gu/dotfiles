# .bash_profile

# bash がログインシェルとして起動された場合にのみ、 /etc/profile の後で読み込まれる。
# ログインシェルとして起動した bash は ~/.bash_profile, ~/.bash_login, ~/.profile を
# この順番で探し、最初に見つかったものだけを読み込む。
# つまりこの .bash_profile が存在している場合、このファイルから読み込まない限りは
# .bash_login や .profile が自動的に読み込まれることはないため要注意。

# ~/.profile を読み込む
if [ -f "${HOME}/.profile" ] && [ -r "${HOME}/.profile" ]; then
  source "${HOME}/.profile"
fi
