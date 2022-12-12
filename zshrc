# -*- mode: shell-script -*-

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
alias kf='ls -FG'

export PATH="$HOME/bin:$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export EDITOR='emacs -nw'
