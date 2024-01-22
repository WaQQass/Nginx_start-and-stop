#!/bin/bash

# Custom stop time in 24-hour format (HH:MM)
custom_stop_time="13:09"

# Get the current time in 24-hour format
current_time=$(date +"%H:%M")

# Compare current time with the custom stop time
if [ "$current_time" \> "$custom_stop_time" ]; then
    echo "Stopping Nginx at $current_time"
    sudo service nginx stop
else
    echo "Current time is before $custom_stop_time. Nginx will not be stopped."
fi

