# Device name
DEVICE="Compx 2.4G Receiver Mouse"

# First reset everything to defaults
xinput set-prop "Compx 2.4G Receiver Mouse" "libinput Scroll Method Enabled" 0, 0, 0
xinput set-prop "Compx 2.4G Receiver Mouse" "libinput Button Scrolling Button" 0
xinput set-prop "Compx 2.4G Receiver Mouse" "libinput Horizontal Scroll Enabled" 0
xinput set-prop "Compx 2.4G Receiver Mouse" "libinput Natural Scrolling Enabled" 0
xinput set-prop "Compx 2.4G Receiver Mouse" "libinput Rotation Angle" 0

# Reset button map to default first
xinput set-button-map "Compx 2.4G Receiver Mouse" 1 2 3 4 5 6 7 8 9 10

# Apply button mapping
xinput set-button-map "$DEVICE" 2 1 8 4 5 6 7 3 9 10

