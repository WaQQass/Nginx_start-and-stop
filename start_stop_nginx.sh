#!/bin/bash

current_time=$(date +"%H:%M")
start_time="14:54"
stop_time="14:58"

if [[ "$current_time" > "$start_time" && "$current_time" < "$stop_time" ]]; then
    echo "Starting Nginx at $current_time"
    sudo service nginx start
else
    echo "Current time is outside the specified range. Nginx will not be started."

    if [[ "$current_time" > "$stop_time" ]]; then
        echo "Stopping Nginx at $current_time"
        sudo service nginx stop
    fi
fi

