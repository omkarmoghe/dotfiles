# Dotfiles

My "dotfiles" and other misc settings.

## Usage

Fork/clone and edit the files as needed. Set the `$DOTFILE_ROOT` env var either directly in `.zshrc` or in your shell:
```zsh
export DOTFILE_ROOT="$HOME/dotfiles"
```

You definitely want to edit `git/.gitconfig` with your info.

Use the `Makefile` to create links in your home directory:
- Run `make zsh` to sym link the `.zshrc` to your `$HOME` directory.
- Run `make gitconfig` to sym link the `.gitconfig`.
- Run `make [all]` to sym link all configs.

### System Packages

All system packages are listed in `system/packages.txt`. Install them individually, or all at once with:
```shell
xargs -a system/packages.txt sudo apt install
```

## Misc

- Run `dotconf` to open the `$DOTFILE_ROOT` dir in your preferred editor (set via `$EDITOR`).
- Git's default pager is set to `bat` and the editor is set to `code` (VS Code). Some `git` commands may not work until you install those or change the values in `git/.gitconfig`.
