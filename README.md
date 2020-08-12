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
