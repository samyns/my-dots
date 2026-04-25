# Tested versions

This config is known to work with the following versions of its main
dependencies, last tested on 2026-04-25.

## Main components

| Component         | Version              |
|-------------------|----------------------|
| Hyprland          | 0.54.3-2             |
| Hyprlock          | 0.9.5-1              |
| Hypridle          | 0.1.7-8              |
| Waybar            | 0.15.0-2             |
| Kitty             | 0.46.2-1             |
| Quickshell (git)  | 0.2.0.r136.gfb08ece-1 |
| awww (AUR)        | 0.12.0-1             |
| Arch Linux        | rolling              |

## Updating this list

After verifying the config works, the maintainer regenerates pinned
versions with:

```bash
./scripts/update-pins.sh
```

This updates `packages/pinned-pacman.txt` and `packages/pinned-aur.txt`.

## How to install pinned versions

If the latest versions break something on your system:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/samyns/Unit-3/main/install.sh) --pinned
```

See the README's "When things break" section for details.

## Manually pinning a single package

If you want to downgrade just one package (e.g., Hyprland):

```bash
sudo pacman -U https://archive.archlinux.org/packages/h/hyprland/hyprland-0.54.3-2-x86_64.pkg.tar.zst
```

Replace with the exact version you need from
https://archive.archlinux.org/packages/.

## Known issues with newer versions

(none yet — please open an issue if you encounter compatibility problems)
