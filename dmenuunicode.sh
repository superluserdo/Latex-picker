#!/bin/sh
# Give dmenu list of all unicode characters to copy.
# Shows the selected character in dunst if running.

# Must have xclip installed to even show menu.
#xclip -h >/dev/null || exit

chosen=$(grep -v "#" ~/.scripts/emoji | dmenu -i -l 20 -fn Monospace-18)

[ "$chosen" != "" ] || exit

c=$(echo "$chosen" | sed "s/ .*//")
echo "$c" | tr -d '\n' | xclip -selection clipboard
pgrep -x dunst >/dev/null && notify-send "'$c' copied to clipboard."

s=$(echo "$chosen" | sed "s/.*; //" | awk '{print $1}')
echo "$s" | tr -d '\n' | xclip
pgrep -x dunst >/dev/null && notify-send "'$s' copied to primary."
