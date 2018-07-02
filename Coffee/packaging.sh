#!/bin/bash

set -eu

source common-functions.sh

echo ""
echo "${info} *** Creating the mlib folder for the jars *** ${normal}"
mkdir -p mlib

echo ""
echo "${info} *** Creating module com.coffee as a jar in the 'mlib' folder *** ${normal}"
jar --create \
    --file mlib/com.coffee@1.0.jar \
	--module-version 1.0  \
	-C mods/com.coffee .
	
echo ""
echo "${info} *** Creating module com.tea as a jar in the 'mlib' folder *** ${normal}"
jar --create \
    --file mlib/com.tea@1.0.jar \
	--module-version 1.0  \
	-C mods/com.tea .	

echo ""
echo "${info} *** Creating module com.app as a jar in the 'mlib' folder *** ${normal}"
jar --create \
    --file mlib/com.app.jar \
	--main-class=com.app.CoffeeApp \
	-C mods/com.app .


echo ""
echo "${info} *** Displaying the contents (jars) of the 'mlib' folder *** ${normal}"
runTree mlib

echo ""
echo "${info} *** Printing module description for com.coffee jar file *** ${normal}"
jar --describe-module  \
    --file=mlib/com.coffee@1.0.jar

echo ""
echo "${info} *** Printing module description for com.app jar file *** ${normal}"
jar --describe-module  \
    --file=mlib/com.app.jar


echo Press enter to continue; read dummy;
