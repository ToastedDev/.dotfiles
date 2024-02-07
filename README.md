# .dotfiles

This repository contains my silly little configuration that somehow makes my setup mine.

## Setup

- Distro: [Fedora Linux](https://fedoraproject.org)
- Window Manager: [Hyprland](https://hyprland.org)
- Terminal: [alacritty](https://github.com/alacritty/alacritty)
- Shell: [zsh](https://zsh.org)
- Prompt: [Starship](https://starship.rs)

![screenshot](https://raw.githubusercontent.com/ToastedDev/.dotfiles/main/screenshots/neofetch.png)

## Installation

First, clone this repository in your $HOME directory:

```
$ git clone git@github.com/ToastedDev/.dotfiles.git $HOME/.dotfiles
$ cd .dotfiles
```

then use GNU stow to create symlinks:

```
$ stow .
```
