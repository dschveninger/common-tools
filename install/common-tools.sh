#!/bin/bash
set -e

install() {
	echo "install"
}

usage() {
	echo "Usage:"
	echo "    -r the directory of the repository that use want common-tools installed"
	exit 1
}

validate_needed() {
	# validate if common-tools installed

	# validate if directory exist in repo
	if [ -d "${REPO}" ]; then
		echo "Directory ${REPO} already exists install cancelled"
		exit 1
	else
		echo ""
	fi
}

main() {
	validate_needed
	install
}

while getopts "h:r:" arg; do
	case $arg in
	r)
		REPO=$OPTARG
		echo "$REPO"
		;;
	h | *)
		usage
		;;
	esac
done

main
