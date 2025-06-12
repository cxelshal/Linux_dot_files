#!/bin/bash

# Set your backlight path
LED_PATH="/sys/class/leds/smc::kbd_backlight"

# Get current brightness and max brightness
current=$(< "$LED_PATH/brightness")
max=$(< "$LED_PATH/max_brightness")
STEP=max/10

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
echo "$new" | doas tee "$LED_PATH/brightness" > /dev/null

