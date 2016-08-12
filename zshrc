[ -e "${HOME}/.antigen/aliases" ] && source "${HOME}/.antigen/aliases"
[ -e "${HOME}/.antigen/locals" ] && source "${HOME}/.antigen/locals"
[ -e "${HOME}/.antigen/functions" ] && source "${HOME}/.antigen/functions"
[ -e "${HOME}/.antigen/privates" ] && source "${HOME}/.antigen/privates"

source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

if [ "$OSTYPE"="darwin11.0" ]; then
  antigen-bundle osx
fi

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle command-not-found
# antigen bundle bundler
antigen bundle brew

[ -e "${HOME}/.antigen/rails5" ] && source "${HOME}/.antigen/rails5"

antigen theme dracula/zsh dracula

antigen apply
