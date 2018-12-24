#!/bin/sh

choice1="LaTeX"
choice2="emoji (type)"
choice3="emoji(clipboard)" 

userchoice=$( echo -e "$choice1\n$choice2\n$choice3" | dmenu -i -p "Choose bank to search")

echo $userchoice

if [ "$userchoice" = "$choice1" ]; then scriptchoice=~/.scripts/dmenulatex-type.sh; fi
if [ "$userchoice" = "$choice2" ]; then scriptchoice=~/.scripts/dmenuunicode-type.sh; fi
if [ "$userchoice" = "$choice3" ]; then scriptchoice=~/.scripts/dmenuunicode.sh; fi

echo $scriptchoice > ~/.scripts/dmenu-scriptchoice.txt

