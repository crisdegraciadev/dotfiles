# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# bun
[ -s "/home/crisdegraciadev/.bun/_bun" ] && source "/home/crisdegraciadev/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# angular CLI autocompletion.
source <(ng completion script)

# term
export TERM=xterm-256color

export PATH="$HOME/Dotfiles/tmux/plugins/tmuxifier/bin:$PATH"
