#! /bin/sh

rofi \
	-modi combi,run \
	-combi-modi window,drun \
	-display-combi APPS \
	-display-drun "" \
	-display-window " Window -> " \
	-display-file-browser FILES \
	-display-run SHELL \
	-theme dracula \
	-i -p "Search: " \

	# -dmenu \
	# file-browser,"CALC:qalc +u8 -nocurrencies","CLIPBOARD:greenclip print",
