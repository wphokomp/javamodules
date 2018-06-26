#!/bin/bash

set -eu

source common-functions.sh

DESTINATION_FOLDER="mods"

echo ""
echo "${info} *** Displaying the contents (source files) of the 'src' folder *** ${normal}"
runTree src

echo ""
echo "${info} *** Compiling both modules into the '$DESTINATION_FOLDER' folder *** ${normal}"
javac -d $DESTINATION_FOLDER \
      --module-source-path src $(find . -name "*.java")

# *************************************************************************************
#
# The --module-source-path parameter of javac takes input source files for multiple modules.
# In the above both the modules are compiled at the same time, dependency is fulfilled immediately.
#
# *************************************************************************************

echo ""
echo "${info} *** Displaying the contents (modules) of the 'mods' folder *** ${normal}"
runTree "$DESTINATION_FOLDER"