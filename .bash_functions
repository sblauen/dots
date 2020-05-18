#! /bin/bash

mkcd ()
{
	mkdir -p "$1"
	cd "$1"
}

git-cfg-user ()
{
	if [[ -z "$1" ]]
	then
		local U="$USER"
	else
		local U="$1"
	fi

	if [[ -z "$2" ]]
	then
		local M="$MAIL"
	else
		local M="$2"
	fi

	git config --local user.name "$U"
	git config --local user.email "$M"
}

git-add-new ()
{
	git add -N "$@" && git add -p "$@"
}
