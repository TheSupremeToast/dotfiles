#! /usr/bin/env bash

DIR="$HOME/.config/polybar/pibar"

killall -q polybar

polybar -q main -c "$DIR"/config.ini &
