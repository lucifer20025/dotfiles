# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║     
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# enable history
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE

# Basic auto/tab complete:
autoload -U compinit
zstyle ":completion:*" menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Basic zsh setting & themes
PATH=$PATH:$HOME/.local/bin
setopt no_list_ambiguous 
bindkey -v
export KEYTIMEOUT=1

# Setting up Defaults
setopt autocd # enable cd with just file paths
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export LANG=en_US.UTF-8

# Sourcing my plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/.zprofile
source ~/.config/zsh/plugins/zsh-colored-man-pages/colored-man-pages.plugin.zsh
source ~/.config/zsh/plugins/colorize/colorize.plugin.zsh

rcd() # allows for changing dir to current ranger dir after exiting
{
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}

vicd()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}

# Aliases
alias zshconf="nvim ~/.config/zsh/.zshrc"
alias tree="tree --color=auto"
alias zshsrc="source ~/.config/zsh/.zshrc"
alias sudo="sudo "
alias gst="git status | more"
alias ls="ls --color"
alias ll="ls -l --color"
alias la="ls -a --color"
alias lal="ls -al --color"
alias downloads="rcd /MassStorage/downloads/"
alias r="ranger"
alias rrconf="nvim ~/.config/ranger/rc.conf"
alias vim="nvim"
alias pac="sudo pacman"
alias commit="git add -A; git commit -m"
alias coding="rcd /MassStorage/coding/"
alias media="rcd /MassStorage/Media/"
alias vimconf="nvim ~/.config/nvim/init.vim"

# Keybindings
bindkey "^ " autosuggest-accept
bindkey -s "^o" "rcd\n"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
