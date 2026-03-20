# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Auto-completion
autoload -Uz compinit && compinit

# ghost text that suggests as we type
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# better substring search up and down arrows
source ~/.local/share/zsh-history-substring-search.zsh
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# navigate by whole words
bindkey "^[[1;5C" forward-word   # Ctrl + Right
bindkey "^[[1;5D" backward-word  # Ctrl + Left

alias python=python3
alias ptyhon=python3
alias pthyon=python3
alias minecraft=java -jar /home/jordan/TechnicLauncher.jar

# Desktop background and wal colors. Point the file below to your background image.
source /home/jordan/.config/desktop-background
gsettings set org.gnome.desktop.background picture-uri-dark file://$DESKTOP_BACKGROUND
python -m pywal -qi $DESKTOP_BACKGROUND
pokefetch show slowpoke

# Starship prompt
eval "$(starship init zsh)"

fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select
