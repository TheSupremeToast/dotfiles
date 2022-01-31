# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/patrick/.zshrc'

# Change the look of the prompt
PS1="%n %~ %"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/AUR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/AUR/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/AUR/powerlevel10k/powerlevel10k.zsh-theme

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/patrick/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/patrick/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/patrick/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/patrick/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Set vim to default editor
export EDITOR=nvim

#
## Aliases
#
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias c="clear"
alias jn="source ~/Documents/Scripts/jupyter-start.sh"

# Kubernetes Aliases
alias k="kubectl"
alias kg="kubectl get"
alias kgp="kubectl get pods"
alias kgs="kubectl get svc"
alias kgc="kubectl get configmaps"
alias ka="kubectl apply"
alias kaf="kubectl apply -f"
alias kd="kubectl delete"
alias kdf="kubectl delete -f"
alias kpf="kubectl port-forward"
alias kde="kubecetl describe"
