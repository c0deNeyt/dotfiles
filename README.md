# Dotfiles

My personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

This repository uses GNU Stow to manage symlinks for configuration files. Each directory represents a "package" that can be independently installed or removed.

```
dotfiles/
├── bash/
│   └── .bashrc
├── vim/
│   └── .vimrc
├── git/
│   └── .gitconfig
├── nvim/
│   └── .config/
│       └── nvim/
│           └── init.vim
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
stow -D bash

# Remove multiple packages
stow -D vim git nvim
```

## Adding New Configurations

1. Create a new directory for your application
2. Mirror the structure from your home directory
3. Move your config files into the new structure
4. Run `stow <package-name>`

Example for adding tmux config:

```bash
# Create the package directory
mkdir -p tmux

# Move your config (from ~/ to ~/dotfiles/tmux/)
mv ~/.tmux.conf ~/dotfiles/tmux/

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
stow bash
```

**Wrong symlink target**: Make sure you're running stow from the dotfiles directory, not from within a package directory.

## License

Feel free to use and modify as needed.

© 2025 c0deNeyt 
