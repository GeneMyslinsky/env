# Created by Gene Myslinsky
source ~/.znap/znap.zsh
zstyle ':znap:*' repos-dir ~/.znap

znap eval starship 'starship init zsh --print-full-init'
znap eval zoxide 'zoxide init zsh'

znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions

#oh-my-zsh
plugins=(git)
source $HOME/.oh-my-zsh/oh-my-zsh.sh

#key remaps
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
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
source /usr/share/nvm/init-nvm.sh

#history config
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

#paths and editors - we add the macro for scripts and local bin path for python
export PATH=$PATH:$HOME/.macros/:$HOME/.local/bin
export VISUAL=nvim
export EDITOR="$VISUAL"
export VI_MODE_SET_CURSOR=true

#aliases to modify and work on zshrc
alias cz='code -n ~/.zshrc'
alias czn='cd ~/.config/nvim && nvim ~/.zshrc'

#aliasing needs to be moved to other files
alias codep='code ~/personal/$(ls ~/personal/ | fzf | awk '\''{print $2}'\'')'
alias cdp='cd ~/personal/$(ls ~/personal/ | fzf | awk '\''{print $2}'\'') && ll'
 
alias ctm='code ~/isw/tm/$(ls ~/isw/tm/ | fzf | awk '\''{print $2}'\'')'
alias cdtm='cd ~/isw/tm/$(ls ~/isw/tm/ | fzf | awk '\''{print $2}'\'') && ll'
alias ccc='code ~/isw/cc/$(ls ~/isw/cc/ | fzf | awk '\''{print $2}'\'')'
alias cdcc='cd ~/isw/cc/$(ls ~/isw/cc/ | fzf | awk '\''{print $2}'\'') && ll'

#aliasing for exa
alias ll='ls -alF'
alias ls='exa --icons -F -H -g --group-directories-first --git -1'

# manual hooks instead of invoking python
source $HOME/.hooks
