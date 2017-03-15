alias e="subl"
alias be="bundle exec"
alias dc="docker-compose"
alias gs="git status"
alias gpr="git pull --rebase"
alias bi="bundle install"
alias ls="ls -G"

export PAGER=less
export VISUAL=atom
export EDITOR=atom

[ -f ~/.completion/git-completion.sh ] && source ~/.completion/git-completion.sh

# Prompt
PS1='\n\u: \w\n\$ '

# Git Prompt
if [ -f ~/.prompt/git-prompt.sh ]; then
  source ~/.prompt/git-prompt.sh

  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWCOLORHINTS=1
  GIT_PS1_SHOWUPSTREAM=verbose

  PROMPT_COMMAND="__git_ps1 '\n\u \w' '\\n\\\$ ';$PROMPT_COMMAND"
fi

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"
