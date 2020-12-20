export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
if command -v goenv 1>/dev/null 2>&1; then
  eval "$(goenv init -)"
fi
