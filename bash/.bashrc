
#<github.com/felipesantos2>

. "$HOME/.local/bin/env"

# 16/06/2026
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init bash)"

alias cd="z"

# Added by Antigravity CLI installer
export PATH="/home/felipesantos2/.local/bin:$PATH"

alias bat="batcat"
alias ci="code-insiders"
alias c="code"
alias cd='z'
alias ds="docker stop $(docker ps -aq)"
alias dt="docker kill $(docker ps -aq)"
alias rm="rm -i"
alias cp="cp -i"

# opencode
export PATH=/home/felipesantos2/.opencode/bin:$PATH
