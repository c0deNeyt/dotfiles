# Dotfiles

My personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

This repository uses GNU Stow to manage symlinks for configuration files. Each directory represents a "package" that can be independently installed or removed.

```
dotfiles/
├── bashh/
│   └── .bashrc #Os config
├── x11/
│   └── .config/
│       └── x11/ #profile config
├── shell/
│   └── .config/
│       └── shell/ #profile config
├── nvim/
│   └── .config/
│       └── nvim/ #Editor
├── dwm/
│   └── .local/
│       └── src/
│           └── dwm/ #suckless Window Manager
├── dwmblocks/
│   └── .local/
│       └── src/
│           └── dwmblocks/ # Scripts for statusbar
├── dmenu/
│   └── .local/
│       └── src/
│           └── dmenu/ #suckless application
├── st/
│   └── .local/
│       └── src/
│           └── st/ #suckless Terminal
├── tmux/
│   └── .config/
│       └── tmux/ #terminal Multiplexer
└── README.md
```

## Prerequisites

Install GNU Stow:

```bash
# Debian/Ubuntu
sudo apt install stow

# macOS
brew install stow

# Arch Linux
sudo pacman -S stow

# Fedora
sudo dnf install stow
```

## Installation

1. Clone this repository to your home directory:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

2. Use Stow to create symlinks for the packages you want:

```bash
# Install a specific package
stow bash

# Install multiple packages
stow vim git nvim

# Install all packages
stow */
```

This will create symlinks from your home directory to the files in the dotfiles repository.

## Uninstallation

To remove symlinks for a package:

```bash
# Remove a specific package
stow -D bashh

# Remove multiple packages
stow -D dwm dwmblocks st dmenu 
```

## Adding New Configurations

1. Create a new directory for your application
2. Mirror the structure from your home directory
3. Move your config files into the new structure
4. Run `stow <package-name>`

Example for adding tmux config:

```bash
# Create the package directory
mkdir -p bashh 

# Move your config (from ~/ to ~/dotfiles/bashh/)
mv ~/.bashrc ~/dotfiles/bassh/

# Install the package
cd ~/dotfiles
stow tmux
```

## Tips

- Use `stow -n <package>` to simulate the operation without making changes
- Use `stow -v <package>` for verbose output
- Run stow commands from the dotfiles directory
- Keep sensitive information (tokens, passwords) out of version control

## Troubleshooting

**Conflict errors**: If Stow reports conflicts, you may have existing files. Back them up and remove them before running Stow:

```bash
mv ~/.bashrc ~/.bashrc.backup
stow bashsh
```

**Wrong symlink target**: Make sure you're running stow from the dotfiles directory, not from within a package directory.

## Credits

This dotfiles configuration includes ideas and configurations from the following repositories:

- [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) - Template for my nvim config 
- [Larbs by Luke Smith ](https://larbs.xyz) - Template for my desktop environment

Thank you to all the developers who share their configurations and make the dotfiles community great!

© 2025 c0deNeyt 
