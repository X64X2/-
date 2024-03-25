#!/bin/sh

calendarl() {
    LOCK_FILE_CALENDAR="$HOME/.cache/eww-calendar.lock"

run() {
    eww open calendar -c ~/.config/eww/
}

# Open widgets
if [ ! -f "$LOCK_FILE_CALENDAR" ]; then
    eww close calendar -c ~/.config/eww/
    touch "$LOCK_FILE_CALENDAR"
    run
elif [ -f "$LOCK_FILE_CALENDAR" ]; then
    eww close calendar -c ~/.config/eww/
    rm "$LOCK_FILE_CALENDAR"
fi
}
calendarl >/dev/null 2>&1
