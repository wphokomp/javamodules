#!/bin/bash

set -eu

source common-functions.sh

echo ""
echo "${info} *** Removing any existing executable directories *** ${normal}"
rm -rf executable

echo ""
echo "${info} *** Create an executable version of the com.app module *** ${normal}"
if [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]] ; then
    # Windows users: please not that if the below fails due to JAVA_HOME substitution, please hard-code the JAVA_HOME path into the script
    jlink  --strip-debug \
		  --no-man-pages \
		  --no-header-files \
		  --compress=2 \
		  --module-path "${JAVA_HOME}\jmods;mlib" \
          --add-modules com.app \
          --output executable
else
    jlink  --strip-debug \
		  --no-man-pages \
		  --no-header-files \
		  --compress=2 \
		  --module-path "${JAVA_HOME}"/jmods:mlib \
          --add-modules com.app \
          --output executable
fi

echo ""
echo "${info} *** Displaying the contents (modules) of the 'executable' folder *** ${normal}"
runTree executable

# ****************************************************************************************************************************
# The value to `--module-path` is a PATH of directories containing the packaged modules.
# Replace the path separator ':' with ';' on Microsoft Windows.
# ****************************************************************************************************************************

echo Press enter to continue; read dummy;