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
'
export CROWDIN_QONTO_MESSENGER_API_KEY=bea1bbb31f0fcf56232ef1b200e0d352
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export AWS_SECRET_ACCESS_KEY=foo
export AWS_ACCESS_KEY_ID=bar

# open psql through kubectl
kubepsql () {
    pod=$(kubectl -n $1 get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}' | grep $2-$1 | head -n 1)
    kubectl -n $1 exec -it $pod -- sh -c 'psql postgres://$DB_USERNAME:$DB_PASSWORD@$DB_HOST/$DB_NAME'
}

# open console through kubectl
kubeconsole () {
    pod=$(kubectl -n $1 get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}' | grep $2-$1 | head -n 1)
    kubectl -n $1 exec -it $pod rails c
}

# open bash through kubectl
kubebash () {
    pod=$(kubectl -n $1 get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}' | grep $2-$1 | head -n 1)
    kubectl -n $1 exec -it $pod /bin/bash
}

eval $(docker-machine env qonto)
