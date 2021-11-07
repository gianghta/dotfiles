# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"

# Poetry - Python package manager
export PATH="$HOME/.poetry/bin:$PATH"

# Golang
export GOPATH="$HOME/go"
export PATH="$PATH:$(go env GOPATH)/bin"

# Python
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
export PATH=${PATH}:/Users/gianghta/Library/Python/3.7/binexport PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# LLVM
export PATH="$HOME/llvm-project/build/bin:$PATH"
