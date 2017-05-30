# ~/.bashrc: executed by bash(1) for interactive shells,
# and also for login shells by being called from
#  - ~/.bash_profile  on CentOS
#  - ~/.profile       on Ubuntu

# for msys2; If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# for CentOS; Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# I prefer Vim style rather than Emacs style
export EDITOR=vim
set -o vi

# Mail directory setting
myMailDir="${HOME}/Maildir"
if [ -r "${myMailDir}" ]; then
	export MAIL=${myMailDir}
fi
unset myMailDir

# Disable "Ctrl-S stop"
if [ "$SSH_TTY" != "" ]; then
	stty stop undef
fi

# If set, a command name that is the name of a directory is executed
# as if it were the argument to the cd command.
shopt -s autocd

# If set, minor errors in the spelling of a directory component in a
# cd command will be corrected.
shopt -s cdspell

# If set, bash checks the window size after each command and, if necessary,
# updates the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# search and then read ~/.bashrc.d/*.sh
confDir="$(cd "$(dirname "${BASH_SOURCE:-$0}")/.bashrc.d/" && pwd)"
if [ -r "${confDir}" ]; then
	for confFile in "${confDir}"/*.sh;
	do
		source "$confFile" || echo "Failed to load $confFile"
	done
	unset confFile
fi
unset confDir

