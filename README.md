# Neovim configuration

Personal [LazyVim](https://www.lazyvim.org/) configuration. This directory is an
independent Git repository, separate from the surrounding Windows dotfiles repo.
Plugin versions are pinned in `lazy-lock.json`.

## Windows setup (Nushell)

Install Neovim, Git and Nushell, then clone this repo:

```nu
git clone https://github.com/Vorwes/nvim.git ~/.config/nvim
```

If using the companion dotfiles repository, run its `~/.config/install.ps1`.
Otherwise, with `%LOCALAPPDATA%/nvim` absent (back up any existing config), create
a directory junction from PowerShell:

```powershell
New-Item -ItemType Junction -Path "$env:LOCALAPPDATA\nvim" -Target "$HOME\.config\nvim"
```

Start `nvim` and let lazy.nvim install plugins. Plugin/data files remain under
`%LOCALAPPDATA%/nvim-data`, not in this repository. No XDG variable is required.
Run `:checkhealth` to check optional dependencies. The configured editor shell
is `nu`; install Nushell on PATH. The Windows Python provider uses the current
user's WindowsApps Python executable when available. Neovide uses
`Iosevka Nerd Font Mono`.

Companion dotfiles and Windows installer: https://github.com/Vorwes/dotfiles
