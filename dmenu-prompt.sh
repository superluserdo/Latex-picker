#!/bin/zsh

choice1="LaTeX"
choice2="emoji (type)"
choice3="emoji(clipboard)" 

echo "$choice1\n$choice2\n$choice3"

echo "$choice1\n$choice2\n$choice3" | dmenu -i -p "Choose bank to search"
userchoice=$( echo -e "$choice1\n$choice2\n$choice3" | dmenu -i -p "Choose bank to search")

echo $userchoice

if [ $userchoice=$choice1 ] ; then ~/.scripts/dmenulatex-type.sh; fi
if [ $userchoice=$choice2 ] ; then ~/.scripts/dmenuunicode-type.sh; fi
if [ $userchoice=$choice3 ] ; then ~/.scripts/dmenuunicode.sh; fi

