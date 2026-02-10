#!/usr/bin/env bash

DIR="$(dirname "$BASH_SOURCE")"
set -e -o pipefail

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

SAVE https://git.rapidcow.org/pub/school/wisc/sdc/fa-25/team.git TO info/refs.rdk
SAVE https://gitee.com/rapidcow/wisc-sdc-fa25-team.git TO info/refs.gitee
SAVE https://github.com/SDC-Fall-2025/Team-17.git TO info/refs.github
SAVE https://github.com/eyzmeng/code-wisc-sdc-fa25-team.git TO info/refs.gh-fork
SAVE https://github.com/eyzmeng/code-wisc-sdc-fa25-team-club-radar.git TO info/refs.gh-ship
SAVE https://github.com/eyzmeng/site-wisc-sdc-fa25-team.git TO info/refs.downstream
SAVE https://github.com/rapidcow/site-wisc-sdc-fa25-team.git TO info/refs.gh-pages

"$DIR"/smx.pl -m "update OK" "$DIR"/..
