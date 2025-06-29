# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="af-magic"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  bundler
  gem
  git
  node
  npm
  pyenv
  rails
  rbenv
  ruby
  vscode
)

source $ZSH/oh-my-zsh.sh

# Preferred editor
export EDITOR='code -n -w'

# Disable Homebrew auto update
export HOMEBREW_NO_AUTO_UPDATE=1

# Zsh options
unsetopt nomatch # allow [] in text

# Source dotfiles
export DOTFILE_ROOT="$HOME/Code/dotfiles"

# Load env files
for env_file in $DOTFILE_ROOT/*/env.zsh; do
  source $env_file
done

# Load alias files
for alias_file in $DOTFILE_ROOT/*/alias.zsh; do
  source $alias_file
done

# Aliases
alias dotconf="$EDITOR $DOTFILE_ROOT" # Open dotfiles in preferred editor.

# pure theme
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL="$"
prompt pure
export MONOREPO_PATH="/Users/omkarmoghe/Code/mt/monorepo"

source /Users/omkarmoghe/Code/mt/monorepo/dev/setup/.mt.zshrc
