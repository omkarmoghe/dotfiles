# dotfiles
Dotfiles and other misc settings.

## Usage
Fork/clone and edit the files as needed. Set the `$DOTFILE_ROOT` env var either directly in `.zshrc` or in your shell:
```zsh
export DOTFILE_ROOT="$HOME/dotfiles"
```
You definitely want to edit `git/.gitconfig` with your info.

Run `make install` to sym link the `.zshrc` to your `$HOME` directory. Run `make gitconfig` to sym link the `.gitconfig`.
