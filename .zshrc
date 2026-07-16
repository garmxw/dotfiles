# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Load ML4W configuration
for f in ~/.config/zshrc/*; do
    if [ ! -d "$f" ]; then
        c=$(echo "$f" | sed -e "s=.config/zshrc=.config/zshrc/custom=")
        [[ -f "$c" ]] && source "$c" || source "$f"
    fi
done

# Optional personal config
[[ -f ~/.zshrc_custom ]] && source ~/.zshrc_custom

# Your aliases
alias nv="nvim"
alias v="/usr/bin/vim"

export PATH=$PATH:/home/garmx/.spicetify
