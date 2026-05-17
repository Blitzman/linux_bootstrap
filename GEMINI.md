# Sway Enhancement Project

This file documents the status of the Sway/Wayland environment enhancements.

## Completed Enhancements
- **Version Control:** Git repository initialized and pushed to [GitHub](https://github.com/Blitzman/linux_bootstrap).
- **Window Manager:** **SwayFX** 0.5.3 (built from source).
  - **Eye Candy:** Enabled rounded corners (10px), window shadows, inactive dimming, and Gaussian blur.
- **Terminal:** `foot` is installed and configured as the default.
  - **Customization:** Font size 14pt, Alpha 0.8, Padding 20px, Nord colors, and blinking Frost blue block cursor.
- **Visuals:** 
  - Nord-inspired color scheme applied system-wide (Sway, Waybar, Foot, Mako, Wofi).
  - Window gaps enabled (inner: 10px, outer: 5px).
  - Wallpaper set to `~/Downloads/stripes.png`.
- **Status Bar:** **Waybar** configured with a "Floating Pill" aesthetic.
  - **Layout:** Floating center-top (4K optimized).
  - **Aesthetics:** Glassmorphism effect (80% opacity), 10px corner radius (matching terminal), and 2px Frost blue border.
  - **Padding:** 20px internal horizontal padding for a clean look.
  - **Workspaces:** Animated dot indicators (icons) with "pop" transitions.
  - **Monitoring:** Integrated CPU, Memory, GPU (NVIDIA), Disk, Temperature, Clock, and Tray.
  - **Typography:** Uses **Nerd Fonts (Symbols Only)** for consistent icon rendering.
- **Launcher:** **Wofi** (Super+D) themed with Nord colors.
- **Notifications:** **Mako** styled with Nord background and Frost borders.
- **System Controls:** 
  - `pactl` for audio.
  - `brightnessctl` for backlight.
  - `swayidle` and `swaylock` (Super+Ctrl+L) for session management.
  - **Dotfiles Management:** Created `sync-dots.sh` to automatically symlink `dotfiles/` to `~/.config/`.
- **Screenshots:** `grim` + `slurp` + `wl-clipboard` (Print or Super+Shift+S).

## Key Configuration Files (in `dotfiles/`)
- **Sway:** `sway/config` (Updated autostart with `sleep 1` delay for reliability)
- **Waybar:** `waybar/config.jsonc`, `waybar/style.css`
- **Foot:** `foot/foot.ini`
- **Mako:** `mako/config`
- **Wofi:** `wofi/config`, `wofi/style.css`

## Important Bindings
- `Super+Return`: Open `foot` terminal.
- `Super+C`: Open Google Chrome.
- `Super+D`: Open `wofi` launcher.
- `Super+Ctrl+L`: Lock screen (swaylock).
- `Super+Shift+Q`: Kill focused window.
- `Super+Shift+C`: Reload Sway config.
- `Print` or `Super+Shift+S`: Area screenshot to clipboard.

## Pending/Optional Ideas
- Add GTK theme configuration (e.g., Nordic) for consistent app visuals in browsers/pavucontrol.
- Setup `swaynag` styling.

