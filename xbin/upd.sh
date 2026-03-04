#!/usr/bin/env bash

set -e -o pipefail
DIR="$(dirname "${BASH_SOURCE[0]}")"

# puts is like libc puts(3), not like fputs(3),
# or like Tcl... nor Ruby.  Without arguments,
# it just acts like cat, except it ensures that
# every line ends with at least one newline.
puts () {
	# awk trick i learned when doing my CS472 hw:
	# https://unix.stackexchange.com/a/507472
	if [ $# -ne 0 ]; then
		printf '%s\n' "$*"
	else
		cat -
	fi | awk 1
}

usage="usage: $0 [-h] [-m MESG]"
bye () { puts "$@"; exit 0; }
die () { puts "$@" >&2; exit 1; }

while getopts m:h opt
do
	case "$opt" in
	m)
		MESG=$OPTARG
		;;
	h)
		bye "$usage"
		;;
	*)
		die "$usage"
	esac
done

# Only run when we are talking to a tty
say () {
	if test -t 1; then
		"$@"
	fi
}

SAVE () {
	URI="$1" DST="$3"
	printf '**** ls-remote %q\n' $URI
	git ls-remote --symref "$URI" |
	tee "$DST" |
	{
		say tput dim
		sed s/^/\#\ /
		say tput sgr0
	}
}

SAVE git@rpi-4b:pub/school/wisc/sdc/fa-25/team.git TO info/refs.rpi
SAVE https://git.rapidcow.org/pub/school/wisc/sdc/fa-25/team.git TO info/refs.rdk
SAVE https://gitee.com/rapidcow/wisc-sdc-fa25-team.git TO info/refs.gitee
SAVE https://github.com/SDC-Fall-2025/Team-17.git TO info/refs.github
SAVE https://github.com/eyzmeng/code-wisc-sdc-fa25-team.git TO info/refs.gh-fork
SAVE https://github.com/eyzmeng/code-wisc-sdc-fa25-team-club-radar.git TO info/refs.gh-ship
SAVE https://github.com/eyzmeng/site-wisc-sdc-fa25-team.git TO info/refs.downstream
SAVE https://github.com/rapidcow/site-wisc-sdc-fa25-team.git TO info/refs.gh-pages

"$DIR"/smx.pl -m "${MESG:-update OK}" "$DIR"/..
