# Dropdown LaTeX symbol searcher/picker using dmenu

Inspired by Luke Smith's [dmenu unicode picker](https://github.com/LukeSmithxyz/voidrice/blob/master/.scripts/i3cmds/dmenuunicode)

## Requires:
* X11 (Linux)
* dmenu

## To setup:
* Bind a hotkey combo to run dmenulatex-type.sh
On the i3 window manager, this involves adding the line ``bindsym $mod+grave exec --no-startup-id ~/.scripts/dmenulatex-type.sh`` to ~/.config/i3/config
* Make sure the filepath in dmenulatex-type.sh points to the "latexsymbols" file

## To use:
Press the hotkey combo (eg Win+\`) and type to search symbols

----

# To have a symbol picker for multiple banks of symbols (eg Latex symbols OR emoji):

## To setup:
* Bind a hotkey combo to run dmenu-prompt.sh -- chooses what to pick from when running the picker - Latex symbols or emoji. 
On the i3 window manager, this involves adding the line ``bindsym $mod+Shift+grave exec --no-startup-id ~/.scripts/dmenu-prompt.sh`` to ~/.config/i3/config
* Then bind a hotkey combo to run whichever script was set to run with dmenu-prompt.sh:
Add ``bindsym $mod+grave exec --no-startup-id $(cat ~/.scripts/dmenu-scriptchoice.txt)``

## To use:
* Press the first hotkey combo (eg Win+Shift+\`) and select which bank of symbols to be searched (Latex/emoji/etc, add your own!)
* Press the second hotkey combo (eg Win+\`) and type to search symbols
