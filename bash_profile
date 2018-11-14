eval "$(rbenv init -)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias ls="gls --group-directories-first --color -1 -p"
alias grep="grep --color=auto"

# Adding NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export LSCOLORS=cxfxcxdxdxegedabagacad

##
# Your previous /Users/oksana/.bash_profile file was backed up as /Users/oksana/.bash_profile.macports-saved_2018-11-13_at_18:17:45
##

# MacPorts Installer addition on 2018-11-13_at_18:17:45: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export LS_COLORS="di=32:ln=35:so=36:pi=37:ex=33:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export FZF_DEFAULT_OPTS='
  --color=bg+:#073642,bg:#002b36,spinner:#719e07,hl:#586e75
  --color=fg:#839496,header:#586e75,info:#cb4b16,pointer:#719e07
  --color=marker:#719e07,fg+:#839496,prompt:#719e07,hl+:#719e07
