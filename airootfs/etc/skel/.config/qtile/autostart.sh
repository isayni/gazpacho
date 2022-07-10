#!/bin/sh

xset r rate 260 50
setxkbmap -option caps:swapescape

picom &
udiskie &
dunst &
