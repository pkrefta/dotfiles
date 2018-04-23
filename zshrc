source "$HOME/.dotfiles/antigen.zsh"

BUNDLED_COMMANDS=(rubocop pronto)

antigen use oh-my-zsh

if [ "$OSTYPE"="darwin11.0" ]; then
  antigen bundle osx
fi

[ -e "${HOME}/.dotfiles/zsh/aliases" ] && source "${HOME}/.dotfiles/zsh/aliases"
[ -e "${HOME}/.dotfiles/zsh/locals" ] && source "${HOME}/.dotfiles/zsh/locals"
[ -e "${HOME}/.dotfiles/zsh/functions" ] && source "${HOME}/.dotfiles/zsh/functions"
[ -e "${HOME}/.dotfiles/zsh/privates" ] && source "${HOME}/.dotfiles/zsh/privates"

antigen bundle robbyrussell/oh-my-zsh plugins/django
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle command-not-found
antigen bundle bundler

antigen theme dracula/zsh dracula

antigen apply
