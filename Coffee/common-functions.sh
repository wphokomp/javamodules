#!/bin/bash

# This is just common bash code used by scripts in the modules

set -eu

# Escape code
esc=$(echo -en "\033")

info="${esc}[0;33m"
normal=$(echo -en "${esc}[m\017")

runTree()
{
  if [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]] ; then
    cmd //c "tree /f /a $1"
  else
    tree -fl $1
  fi
}
