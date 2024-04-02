if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History
HISTFILE=~/.zsh_history

# Sources
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh-config/alias.zsh

#	Binds
bindkey '^H' backward-kill-word
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M vicmd 'l' forward-word
bindkey -M vicmd 'j' backward-word

# Plugins
source ~/.zsh-config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-config/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-config/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh-config/zsh-history-substring-search/zsh-history-substring-search.zsh

# Pywal config
(cat ~/.cache/wal/sequences &)
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh

# Start p10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Exports
export PATH="$PATH:/home/bl00d/.local/bin"
