# .dotfiles

This repository contains my silly little configuration that somehow makes my setup mine.

## Setup

- Distro: [Fedora Linux](https://fedoraproject.org)
- Window Manager: [Hyprland](https://hyprland.org)
- Terminal: [alacritty](https://github.com/alacritty/alacritty)
- Shell: [zsh](https://zsh.org)
- Prompt: [Starship](https://starship.rs)

![image](https://github.com/ToastedDev/.dotfiles/assets/50563138/4c4651de-d08d-48a2-b166-f221bf432344)

## Installation

First, clone this repository n your $HOME directory:

```
$ git clone git@github.com/ToastedDev/.dotfiles.git $HOME/.dotfiles
$ cd .dotfiles
```

then use GNU stow to create symlinks:

```
$ stow .
```
