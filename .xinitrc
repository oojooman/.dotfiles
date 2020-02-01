systemctl --user import-environment DISPLAY
xsetroot -cursor_name left_ptr
export DESKTOP_SESSION=gnome
exec bspwm
