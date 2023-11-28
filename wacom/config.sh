#!/bin/sh

for i in $(seq 10); do
    if xsetwacom list devices | grep -q pad; then
        break
    fi
    sleep 1
done

list=$(xsetwacom list devices)
pad=$(echo "${list}" | grep 'Pad pad' | cut -c15- | grep -E -o '[0-9]+' |head -n 1)
stylus=$(echo "${list}" | grep 'stylus' | cut -c15- | grep -E -o '[0-9]+' |head -n 1) 

if [ -z "${pad}" ]; then
    exit 0
fi

xsetwacom set $stylus Button 2 "key +y"
xsetwacom set $stylus Button 3 "key +7"
xsetwacom set $pad Button 1 "key b"
xsetwacom set $pad Button 2 "key Control"
xsetwacom set $pad Button 3 "key Alt"
xsetwacom set $pad Button 8 "key +space"
xsetwacom set $pad Button 9 "key +8"
xsetwacom set $pad Button 10 "key g"
xsetwacom set $pad Button 11 "key Control z"
xsetwacom set $pad Button 12 "key Escape"