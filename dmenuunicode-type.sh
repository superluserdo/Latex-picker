#!/bin/sh
# Give dmenu list of all unicode characters to copy.
# Shows the selected character in dunst if running.

# Must have xclip installed to even show menu.
#xclip -h >/dev/null || exit

chosen=$(grep -v "#" ~/.scripts/emoji | dmenu -i -l 20 -fn Monospace-18)

[ "$chosen" != "" ] || exit

c=$(echo "$chosen" | sed "s/ .*//")
echo "$c" | tr -d '\n' | xdotool type --file -
