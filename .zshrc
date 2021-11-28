# Use powerline
#USE_POWERLINE="true"
# Source manjaro-zsh-configuration

#if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#  source /usr/share/zsh/manjaro-zsh-config
#fi

# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete:
#autoload -U compinit
#zstyle ':completion:*' menu select
#zmodload zsh/complist
#compinit
#_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
#bindkey '^ ' autosuggest-accept

#source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/autojump/autojump.zsh 2>/dev/null

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
source $HOME/.commonrc
source $HOME/.functionrc
source $HOME/.aliasrc
