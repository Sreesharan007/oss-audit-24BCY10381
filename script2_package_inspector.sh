#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="linux"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    linux) echo "Linux: the foundation of modern open-source systems" ;;
    apache2) echo "Apache: the web server that built the internet" ;;
    mysql) echo "MySQL: database powering millions of applications" ;;
    firefox) echo "Firefox: open-source browser for a free web" ;;
    *) echo "Unknown package — still part of FOSS ecosystem" ;;
esac
