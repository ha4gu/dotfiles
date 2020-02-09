# .profile

# 各シェルがログインシェルとして起動された場合に読み込まれる可能性がある。
# bash の場合には ~/.bash_profile, ~/.bash_login が存在しない場合には
# この .profile が /etc/profile の後で自動的に読み込まれる。
# zsh の場合には /etc/profile のあとで自動的に読み込まれる。

# この dotfiles においては、 .bash_profile から .profile を読み込むように
# しているので、 bash でも zsh でもこの .profile が読み込まれる。

# ~/.profile.d 配下のファイルを読み込む
if [ -d "${HOME}/.profile.d" ] &&
  [ -r "${HOME}/.profile.d" ] &&
  [ -x "${HOME}/.profile.d" ] &&
  [ -n "$(ls ${HOME}/.profile.d/*.sh 2>/dev/null)" ]; then

  for file in "${HOME}/.profile.d"/*.sh;
  do
    if [ -r "${file}" ]; then
      source "${file}"
    fi
  done
fi

# シェルが bash の場合には ~/.bashrc を読み込む
if [ -n "$BASH_VERSION" ]
  if [ -f "${HOME}/.bashrc" ] && [ -r "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
  fi
fi
