if [ -e "${HOME}/.rvm/scripts/rvm" ]; then
	source ${HOME}/.rvm/scripts/rvm
else
	echo "$BASH_SOURCE: RVM is not installed" >&2
fi

