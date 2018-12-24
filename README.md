#Dropdown LaTeX symbol searcher/picker using dmenu

Inspired by Luke Smith's [dmenu unicode picker](https://github.com/LukeSmithxyz/voidrice/blob/master/.scripts/i3cmds/dmenuunicode)

##Requires:
* X11 (Linux)
* dmenu

##To use:
* Bind a hotkey combo to run dmenulatex-type.sh
On the i3 window manager, this involves adding the line ``bindsym $mod+grave exec --no-startup-id ~/.scripts/dmenulatex-type.sh`` to ~/.config/i3/config
* Make sure the filepath in dmenulatex-type.sh points to the "latexsymbols" file

##To have a symbol picker for Latex symbols OR emoji:
* Bind a hotkey combo to run dmenu-prompt.sh -- chooses what to pick from when running the picker - Latex symbols or emoji. 
On the i3 window manager, this involves adding the line ``bindsym $mod+Shift+grave exec --no-startup-id ~/.scripts/dmenu-prompt.sh`` to ~/.config/i3/config


