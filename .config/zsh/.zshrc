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

HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE

# Basic auto/tab complete:
autoload -U compinit
zstyle ":completion:*" menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

source ~/.config/zsh/.zprofile

# Basic zsh setting & themes
PATH=$PATH:$HOME/.local/bin
setopt no_list_ambiguous
bindkey -v
export KEYTIMEOUT=1

# Setting up Defaults
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

plugins=(zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
function rrcd() # allows for changing dir to current ranger dir after exiting
{
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}
# Aliases
alias zshconfig="nvim ~/.config/zsh/.zshrc"
alias zshsource="source ~/.config/zsh/.zshrc"
alias sudo="sudo "
alias gstat="git status | more"
alias ll="ls -l"
alias la="ls -a"
alias lal="ls -al"
alias downloads="rrcd /MassStorage/downloads/"
alias r="ranger"
alias rrconfig="nvim ~/.config/ranger/rc.conf"
alias vi="nvim"
alias vim="nvim"
alias tty="tty-clock -C6 -c -t"
alias pac="sudo pacman"
alias commit="git add -A; git commit -m"
alias coding="rrcd /MassStorage/coding/"
alias media="rrcd /MassStorage/Media/"
alias vimconfig="nvim ~/.config/nvim/init.vim"
alias x="exit"

# Keybindings
bindkey "^ " autosuggest-accept

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

