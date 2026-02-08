# cosmic-webapp

Turn any website into a standalone desktop app on [COSMIC](https://github.com/pop-os/cosmic-epoch) desktop.

```
  ██████╗ ██████╗ ███████╗███╗   ███╗██╗ ██████╗
 ██╔════╝██╔═══██╗██╔════╝████╗ ████║██║██╔════╝
 ██║     ██║   ██║███████╗██╔████╔██║██║██║
 ██║     ██║   ██║╚════██║██║╚██╔╝██║██║██║
 ╚██████╗╚██████╔╝███████║██║ ╚═╝ ██║██║╚██████╗
  ╚═════╝ ╚═════╝ ╚══════╝╚═╝     ╚═╝╚═╝ ╚═════╝
          Web App Manager
```

## Demo

![cosmic-webapp demo](demo.gif)

## Features

- Interactive TUI powered by [gum](https://github.com/charmbracelet/gum)
- Isolated browser profile per webapp (cookies, sessions, data stay separate)
- Custom icon URL support (e.g. from [dashboardicons.com](https://dashboardicons.com)) with automatic favicon fallback
- Proper Wayland `app_id` generation for COSMIC dock integration
- Chromium and Brave browser support
- Standard `.desktop` files — webapps appear in the COSMIC app launcher

## Dependencies

- `gum` — interactive terminal UI
- `chromium` or `brave` — browser engine
- `wget` — favicon download
- `imagemagick` (optional) — `.ico` to `.png` conversion

## Install

```bash
git clone https://github.com/Ahmosys/cosmic-webapp.git
cd cosmic-webapp
chmod +x install.sh
./install.sh
```

## Usage

### Interactive mode

```bash
cosmic-webapp
```

### CLI mode

```bash
# Create a webapp
cosmic-webapp create "YouTube" "https://youtube.com" chromium Network

# Create a webapp with a custom icon
cosmic-webapp create "Home Assistant" "https://ha.example.com" chromium Network "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/home-assistant.png"

# List installed webapps
cosmic-webapp list

# Remove a webapp
cosmic-webapp remove
```

## Uninstall

```bash
./uninstall.sh
```

## How it works

Each webapp gets:
- A `.desktop` file in `~/.local/share/applications/`
- An icon in `~/.local/share/icons/webapps/`
- An isolated browser profile in `~/.local/share/chromium-webapps/`
- A Wayland `app_id` matching Chromium's algorithm (`chrome-<url>-Default`) for proper window management and dock pinning

## Acknowledgments

This project was developed with the assistance of [Claude](https://claude.ai) (Anthropic).

## License

[MIT](LICENSE)
