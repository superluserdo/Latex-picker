#!/bin/sh
# Auto type latex maths symbols
# Inspired by Luke Smith's dmenuunicode tool
# Requires dmenu, xdotool (xorg X11)

chosen=$(grep -v "#" ~/.scripts/latexsymbols | dmenu -i -l 20 -fn Monospace-18)

[ "$chosen" != "" ] || exit

c=$(echo "$chosen" | cut -d";" -f2)
echo "$c" | tr -d '\n' | xdotool type --file -
