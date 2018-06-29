#!/bin/bash

set -eu

source common-functions.sh

echo ""
echo "${info} *** Running 'com.bbd.ILikeCoffee' from within the mods folder (module 'com.bbd' is dependent on 'com.coffee'). *** ${normal}"
echo 
java --module-path mods \
     --module com.bbd/com.bbd.ILikeCoffee


echo Press enter to continue; read dummy;