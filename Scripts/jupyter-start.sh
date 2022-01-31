#! /bin/bash

echo "Enter (1) for ~/Documents/Python or"
echo "Enter (2) for ~/Documents/School/CMDA2006"

read usr_input

if [ $usr_input -eq 1 ] ; then
    cd ~/Documents/Python
fi
if [ $usr_input -eq 2 ] ; then
    cd ~/Documents/School/CMDA2006
fi

jupyter notebook
