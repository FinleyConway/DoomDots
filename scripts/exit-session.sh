#!/bin/bash

# exit options
options="Shutdown\nReboot\nSleep\nHibernate\nLogout\nCancel"

choice=$(echo -e "$options" | wofi -dmenu --show dmenu --insensitive --width=400 --heigh=300 --prompt "Exit Session:")

case "$choice" in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Sleep)
        systemctl suspend
        ;;
    Hibernate)
        systemctl hibernate
        ;;
    Logout)
        hyprctl dispatch exit
        ;;
    Cancel)
        exit 0
        ;;
    *)
        exit 0
        ;;
esac