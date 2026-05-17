#!/bin/bash

# Environment variables for Nvidia support
export WLR_NO_HARDWARE_CURSORS=1
export LIBVA_DRIVER_NAME=nvidia
export XDG_SESSION_TYPE=wayland
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia

# Log the output to a file for easier debugging
exec sway --unsupported-gpu -d > ~/sway.log 2>&1
