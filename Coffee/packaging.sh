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
echo "${info} *** Creating module com.bbd as a jar in the 'mlib' folder *** ${normal}"
jar --create \
    --file mlib/com.bbd.jar \
	--main-class=com.bbd.ILikeCoffee \
	-C mods/com.bbd .


echo ""
echo "${info} *** Displaying the contents (jars) of the 'mlib' folder *** ${normal}"
runTree mlib

echo ""
echo "${info} *** Printing module description for com.coffee jar file *** ${normal}"
jar --describe-module  \
    --file=mlib/com.coffee@1.0.jar

echo ""
echo "${info} *** Printing module description for com.bbd jar file *** ${normal}"
jar --describe-module  \
    --file=mlib/com.bbd.jar
