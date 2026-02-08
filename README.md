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

## Features

- Interactive TUI powered by [gum](https://github.com/charmbracelet/gum)
- Isolated browser profile per webapp (cookies, sessions, data stay separate)
- Automatic favicon download
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

## License

[MIT](LICENSE)
