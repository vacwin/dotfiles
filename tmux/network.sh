#!/bin/sh

if [ "$(uname)" = "Darwin" ]; then
    ip_addr=$(ipconfig getifaddr en0 2>/dev/null)
    ssid=$(networksetup -getairportnetwork en0 2>/dev/null | sed 's/Current Wi-Fi Network: //')
    [ -z "$ssid" ] || echo "$ssid" | grep -q "not associated" && ssid="en0"
    vpn=""
    if scutil --nc list 2>/dev/null | grep -v Disconnected | grep -q "VPN"; then
        vpn=" VPN"
    fi
else
    iface=$(ip route 2>/dev/null | awk '/default/{print $5}' | head -1)
    ip_addr=$(ip route get 1 2>/dev/null | awk '{print $7}' | head -1)
    ssid="$iface"
    vpn=""
    if ip link show tun0 2>/dev/null | grep -q UP || \
       ip link show wg0  2>/dev/null | grep -q UP; then
        vpn=" VPN"
    fi
fi

host=$(hostname -s)
echo "${host} ${ip_addr} ${ssid}${vpn}"
