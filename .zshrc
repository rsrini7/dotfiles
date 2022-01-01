# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="/home/srini/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-completions zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search zsh-z zsh-dircolors-solarized)
source $ZSH/oh-my-zsh.sh

autoload -U +X compinit && compinit
#[ -s "/usr/share/fzf/key-bindings.zsh" ] && source "/usr/share/fzf/key-bindings.zsh"
#[ -s "/usr/share/fzf/completion.zsh" ] && source "/usr/share/fzf/completion.zsh"


source $HOME/.commonrc
source $HOME/.functionrc
source $HOME/.aliasrc


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

