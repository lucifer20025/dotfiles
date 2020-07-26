# Sourcing my plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/plugins/zsh-colored-man-pages/colored-man-pages.plugin.zsh
source ~/.config/zsh/plugins/colorize/colorize.plugin.zsh
source ~/.local/share/lscolors.sh

# Aliases
alias vim="nvim"
alias r="ranger"
alias ls="ls --color"
alias ll="ls -l --color"
alias la="ls -a --color"
alias lal="ls -al --color"
alias zshcfg="nvim ~/.config/zsh/.zshrc"
alias zshsrc="source ~/.config/zsh/.zshrc"
alias gst="git status | more"
alias downloads="rcd /MassStorage/downloads/"
alias rcfg="nvim ~/.config/ranger/rc.conf"
alias pac="sudo pacman"
alias pu="sudo pacman -Syyu" 
alias coding="rcd /MassStorage/coding/"
alias media="rcd /MassStorage/Media/"
alias vimcfg="nvim ~/.config/nvim/init.vim"
alias aliascfg="nvim ~/.config/zsh/alias.zsh"
