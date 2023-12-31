#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep wlan0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "wlan0" ]; then
    IPADDRESS=$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')
    if [ "$IPADDRESS" = "" ]; then

      echo "%{F#CCCC00}󱚵 %{u-} Disconnected"
    else
      echo "%{F#1bbf3e}󱚽%{F#ffffff} $IPADDRESS%{u-}"
    fi
else
    echo "%{F#FF3333}󰖪%{u-} No Wi-fi"
fi
