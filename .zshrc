source ~/.znap/znap.zsh
zstyle ':znap:*' repos-dir ~/.znap

znap eval starship 'starship init zsh --print-full-init'
znap eval zoxide 'zoxide init zsh'

znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions

plugins=(git)
source $HOME/.oh-my-zsh/oh-my-zsh.sh

alias ll='ls -alF'
alias ls='exa --icons -F -H --group-directories-first --git -1'


bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word


__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup


HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
