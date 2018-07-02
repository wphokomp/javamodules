#!/bin/bash

set -eu

source common-functions.sh

echo ""
echo "${info} *** Running 'com.app.CoffeeApp' from within the mods folder (module 'com.app' is dependent on 'com.coffee'). *** ${normal}"
echo 
java --module-path mods \
     --module com.app/com.app.CoffeeApp


echo Press enter to continue; read dummy;