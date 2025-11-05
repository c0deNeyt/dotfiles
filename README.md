
```markdown
# 🧩 Dotfiles Configuration

This repository contains my personal configuration files, managed with **[GNU Stow](https://www.gnu.org/software/stow/)** for easy symlink management.

## 📁 Repository Structure

Each directory in this repo corresponds to a configuration “package” (e.g. `zsh`, `nvim`, `git`), which mirrors the directory structure under `$HOME`.

Example:
```

dotfiles/
├── README.md
├── zsh/
│   └── .zshrc
├── nvim/
│   └── .config/
│       └── nvim/
│           ├── init.lua
│           └── lua/
│               └── user/
│                   └── settings.lua
└── git/
└── .gitconfig

````

When stowed, each file is symlinked into the corresponding place under your home directory.

---

## ⚙️ Prerequisites

Make sure GNU Stow is installed:

```bash
# Debian/Ubuntu
sudo apt install stow

# Fedora
sudo dnf install stow

# Arch 
sudo pacman -S stow 

# macOS (Homebrew)
brew install stow

````
---

## 🚀 Usage

Clone your dotfiles repository **into your home directory** (recommended):

```bash
cd ~
git clone https://github.com/c0deNeyt/dotfiles.git
cd dotfiles
```

Then use **Stow** to “deploy” any configuration:

```bash
# Example: stow zsh config
stow zsh

# Example: stow multiple configs
stow nvim git tmux
```

This creates symlinks in your `$HOME` directory pointing to the files in this repo.

---

## 🔄 Updating and Unstowing

To remove symlinks (unstow):

```bash
stow -D zsh
```

To restow (useful after updating file paths):

```bash
stow -R nvim
```

---

## 🧼 Notes

* Run all `stow` commands from inside the **root of this repository**.
* Avoid naming conflicts by keeping the folder structure consistent with `$HOME`.
* Always check with `stow -nv <pkg>` first (dry run) before applying.

---

## 🧠 Tips

* You can keep machine-specific configs in a `local/` directory that you **don’t stow**.
* If you’re syncing between multiple systems, consider `.stow-local-ignore` to exclude files.
* Use git branches for environment-specific setups (e.g. `macos`, `linux`).

---

## 🪄 Example Workflow

```bash
# After a fresh OS install
git clone https://github.com/c0deNeyt/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow zsh git nvim tmux
```

And you’re ready to roll 🎉

---

## 🧰 References

* [GNU Stow Manual](https://www.gnu.org/software/stow/manual/stow.html)
* [Managing Dotfiles with GNU Stow (Guide)](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/)

---

© 2025 c0deNyet 
