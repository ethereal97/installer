#!/bin/bash

set -e

PWD="$(cd $(dirname "${BASH_SOURCE[0]}") && echo $(pwd))"
PATH="${PWD}/bin:${PATH}"

ethereal() {
	printf "\033[1;44;37m ETHEREAL \033[1;2;47;30m ${1:-'CLI'} \033[0m"
	[[ -n "$2" ]] && printf "\n"
}

ethereal CLI true
