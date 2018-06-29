#!/bin/bash

set -eu

source common-functions.sh

echo ""
echo "${info} *** Removing any existing coffee.jmod *** ${normal}"
rm -f coffee.jmod

echo
echo ""
echo "${info} *** Creating a module (coffee.jmod) from multiple modules / packages / classes with jlink. *** ${normal}"
if [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]] ; then
	jmod create \
	     --class-path "mods\com.bbd;mods\com.coffee;mods\com.tea" \
	     coffee.jmod
else
	jmod create \
	     --class-path mods/com.bbd:mods/com.coffee:mods/com.tea \
	     coffee.jmod
fi

echo ""
echo "${info} *** Enlisting the contents of the module (coffee.jmod) *** ${normal}"
jmod list coffee.jmod


echo "${info} *** Currently JMOD files can be used at compile time and link time, but not at run time. *** ${normal}"
echo "${info} *** Read further about JMod files at http://openjdk.java.net/jeps/261#Packaging:-JMOD-files *** ${normal}"

echo Press enter to continue; read dummy;
