# Device name
DEVICE="Compx 2.4G Receiver Mouse"

# First reset everything to defaults
xinput set-prop "$DEVICE" "libinput Scroll Method Enabled" 0, 0, 0
xinput set-prop "$DEVICE" "libinput Button Scrolling Button" 0
xinput set-prop "$DEVICE" "libinput Horizontal Scroll Enabled" 0
xinput set-prop "$DEVICE" "libinput Natural Scrolling Enabled" 0

# Reset button map to default first
xinput set-button-map "$DEVICE" 1 2 3 4 5 6 7 8 9 10

# Apply button mapping
xinput set-button-map "$DEVICE" 2 1 8 4 5 6 7 3 9 10

# Enable scrolling
xinput set-prop "$DEVICE" "libinput Scroll Method Enabled" 0, 0, 1
xinput set-prop "$DEVICE" "libinput Button Scrolling Button" 8
xinput set-prop "$DEVICE" "libinput Horizontal Scroll Enabled" 1
