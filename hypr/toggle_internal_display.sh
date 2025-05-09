#!/bin/bash

INTERNAL_MONITOR="eDP-1"

toggle_internal_display() {
  MONITORS=$(hyprctl monitors -j)

  # Count external monitors (i.e., monitors that are not the internal one)
  EXTERNAL_COUNT=$(echo "$MONITORS" | jq --arg internal "$INTERNAL_MONITOR" '[.[] | select(.name != $internal)] | length')

  if [ "$EXTERNAL_COUNT" -gt 0 ]; then
    echo "External monitor detected — disabling $INTERNAL_MONITOR"
    hyprctl keyword monitor "$INTERNAL_MONITOR,disable"
  else
    echo "No external monitor detected — enabling $INTERNAL_MONITOR"
    hyprctl keyword monitor "$INTERNAL_MONITOR,preferred,auto,1"
  fi
}

# Run once at startup
toggle_internal_display

# Watch for monitor changes
inotifywait -m -e change -e create -e delete /sys/class/drm/ |
while read -r _; do
  sleep 0.5  # give Hyprland a moment to process the change
  toggle_internal_display
done
