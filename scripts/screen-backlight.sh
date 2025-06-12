#!/bin/bash

# Set the path to your backlight controller
BACKLIGHT_PATH="/sys/class/backlight/gmux_backlight"

# Get current and max brightness
current=$(< "$BACKLIGHT_PATH/brightness")
max=$(< "$BACKLIGHT_PATH/max_brightness")
STEP=max/10  # Change based on how smooth you want the steps

case "$1" in
  up)
    new=$((current + STEP))
    [[ $new -gt $max ]] && new=$max
    ;;
  down)
    new=$((current - STEP))
    [[ $new -lt 0 ]] && new=0
    ;;
  *)
    echo "Usage: $0 {up|down}"
    exit 1
    ;;
esac

# Set new brightness
echo "$new" | doas tee "$BACKLIGHT_PATH/brightness" > /dev/null

