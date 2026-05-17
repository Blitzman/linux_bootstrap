# Sway Enhancement Project

This file documents the status of the Sway/Wayland environment enhancements.

## Completed Enhancements
- **Window Manager:** **SwayFX** 0.5.3 (built from source).
  - **Eye Candy:** Enabled rounded corners (10px), window shadows, inactive dimming, and Gaussian blur.
- **Terminal:** `foot` is installed and configured as the default.
  - **Customization:** Font size 14pt, Alpha 0.8, Padding 20px, Nord colors, and blinking Frost blue block cursor.
- **Visuals:** 
  - Nord-inspired color scheme applied system-wide (Sway, Waybar, Foot, Mako, Wofi).
  - Window gaps enabled (inner: 10px, outer: 5px).
  - Wallpaper set to `~/Downloads/stripes.png`.
- **Status Bar:** **Waybar** configured with a "Floating Pill" aesthetic.
  - **Layout:** Floating center-top (4K optimized with 400px side margins and 20px top margin).
  - **Monitoring:** Integrated CPU (usage), Memory (used/total), GPU (NVIDIA load/VRAM), Disk (used/total), Temperature, Clock, and Tray.
  - **Style:** Semi-transparent Nord background with Frost blue accent borders.
- **Launcher:** **Wofi** (Super+D) themed with Nord colors.
- **Notifications:** **Mako** styled with Nord background and Frost borders.
- **System Controls:** 
  - `pactl` for audio.
  - `brightnessctl` for backlight.
  - `swayidle` and `swaylock` (Super+Ctrl+L) for session management.
- **Screenshots:** `grim` + `slurp` + `wl-clipboard` (Print or Super+Shift+S).

## Key Configuration Files (in `dotfiles/`)
- **Sway:** `sway/config`
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
- Create a unified script to sync `dotfiles/` to `~/.config/` automatically.
