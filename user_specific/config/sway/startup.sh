#!/bin/sh

# Import the WAYLAND_DISPLAY env var from sway into the systemd user session.
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway

# Stop any services that are running, so that they receive the new env var when they restart.
systemctl --user stop pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr
systemctl --user start wireplumber

swaymsg exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
swaymsg exec 'QT_QPA_PLATFORM=xcb nm-applet'
sleep 5
swaymsg exec 'qpwgraph -a -x -m /home/ezteb/.config/qpwgraph/system.qpwgraph'
sleep 1
swaymsg exec 'QT_QPA_PLATFORM=xcb kdocker pw-jack calfjackhost -cSystem -s/home/ezteb/.config/calf/calf.tmpl'
