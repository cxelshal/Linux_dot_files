#!/bin/bash

case "$1" in
  up)
    amixer sset Master 5%+
    ;;
  down)
    amixer sset Master 5%-
    ;;
  mute)
    amixer sset Master toggle
    ;;
  *)
    echo "Usage: $0 {up|down|mute}"
    exit 1
    ;;
esac

