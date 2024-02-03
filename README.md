# artix-dinit-sway dotfiles (WIP)

## Keybindings

- `MOD+[num]` -> Switch Workspace number
- `MOD+ENTER` -> Terminal
- `MOD+ARROW` -> Move Focus
- `PRT SC` -> Screenshot
- `MOD+Shift+Space` -> Toggle floating
- `MOD+Shift+S` -> Toggle sticky for floating window
- `MOD+LMB Drag` -> Drag and Move floating window
- `MOD+RMB Drag` -> Drag and Resize floating window

## pkglist backup & restore

```bash
# Backup Arch and AUR pkglists
sudo pacman -Qqen > .pkglist
sudo pacman -Qqem > .pkglist-aur

# Restore both
sudo pacman -S --needed - < .pkglist
for x in $(< .pkglist-aur); do yay -S $x; done
```

## install dinit-uservervd

- refer - https://github.com/Xynonners/dinit-userservd
- do `makepkg -si`

## Setup snapshots using snapper and grub-btrfs

- only for btrfs
- follow - https://www.lorenzobettini.it/2023/03/snapper-and-grub-btrfs-in-arch-linux/
- make sure to do `update-grub` to get Snapshot menu on grub
- start btrfs-assistant by using `sudo -E btrfs-assistant-bin`

## Setup screen sharing

- run [screensh](./.local/bin/screensh)
- refer -https://www.reddit.com/r/swaywm/comments/l4e55v/guide_how_to_screenshare_from_chromiumfirefox/
- Todo make dinit user service
