# Home Assistant Readarr Addon

A Home Assistant addon for [Readarr](https://github.com/Faustvii/Readarr) - an ebook and audiobook collection manager for Usenet and BitTorrent users.

## Features

- Automatic book discovery and downloading
- Quality upgrades (e.g., PDF to AZW3)
- Library scanning and organization
- Integration with download clients (qBittorrent, Transmission, Deluge, etc.)
- Calibre library integration
- Web UI accessible via Home Assistant ingress

## Installation

1. Add this repository to your Home Assistant addon store
2. Install the "Readarr" addon
3. Start the addon
4. Access Readarr via the sidebar or port 8787

## Configuration

| Option | Description | Default |
|--------|-------------|---------|
| `PUID` | User ID for file permissions | `0` |
| `PGID` | Group ID for file permissions | `0` |

## Volume Mappings

| Path | Description |
|------|-------------|
| `/media` | Access to Home Assistant media folder (for books) |
| `/share` | Access to Home Assistant share folder (for downloads) |
| `/addon_config/readarr` | Persistent configuration storage |

## Ports

- **8787**: Readarr Web Interface

## Usage

After starting the addon, access Readarr through the Home Assistant sidebar (if ingress is enabled) or directly at `http://<your-ha-ip>:8787`.

### Setting up Download Paths

When configuring Readarr, use these paths:
- Books: `/media/books` (or create a subfolder in /media)
- Downloads: `/share/downloads` (or create a subfolder in /share)

## Credits

- [Faustvii/Readarr](https://github.com/Faustvii/Readarr) - Maintained fork of Readarr
- [Home Assistant](https://www.home-assistant.io/) - Home automation platform
