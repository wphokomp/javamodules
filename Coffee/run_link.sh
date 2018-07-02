#!/bin/bash

set -eu

source common-functions.sh

echo
echo "${info} *** Running 'com.app.CoffeeApp' from the module 'com.app' using the java in the 'executable' folder *** ${normal}"
echo "${info} *** The 'executable' folder is a distributable folder and we should be able to run it independent on another machine but for the same platform *** ${normal}"
echo "${info} *** Using the command-line action 'executable/bin/java --module com.app com.app.CoffeeApp' *** ${normal}"
echo "${info} *** Please note that the distributable is platform specific *** ${normal}"
echo
executable/bin/java --module com.app com.app.CoffeeApp

echo
echo "${info} *** Running 'com.app.CoffeeApp' from the via the main jar file in a separate 'mlib' folder using the java launcher in the 'executable' folder *** ${normal}"
echo
executable/bin/java -jar mlib/com.app.jar com.app.CoffeeApp

echo Press enter to continue; read dummy;
