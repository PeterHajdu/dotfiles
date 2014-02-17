#!/bin/bash

xrandr --newmode  "1440x900"  106.50  1440 1528 1672 1904  900 903 909 934 -hsync +vsync
xrandr --addmode VGA1 1440x900
xrandr --output VGA1 --mode 1440x900
xrandr --output LVDS1 --mode 1024x600
xrandr --output VGA1 --auto --right-of LVDS1

