# Oh My Zsh

export ZSH="/home/mofarah/.oh-my-zsh"  # Path to your oh-my-zsh installation.
ZSH_THEME="agnoster"
# Good Themes: robbyrussell (default) - agnoster - af-magic - jnrowe - clean - arrow - candy - crunch - intheloop
DISABLE_AUTO_UPDATE="true"   #disable auto-update checks.  
# ENABLE_CORRECTION="true"  # enable command auto-correction.

plugins=(alias-finder copyfile copydir dirhistory extract jump sudo systemadmin web-search)

# alias-finder: use this command to find if a command has a registered alias
# copydir and copyfile: use commands with the same names to copy dir name or file content to clipboard
# dirhistory: <alt-left> and <alt-right> to cd up and down
# extract: use this command to extract any type of archive
# jump: commands (mark jump umark marks) to mark and jump to important directories faster 
# sudo: <ESC> twice to add sudo to last command
# systemadmin: inhance ping and mkdir and add clr, path, psmem, psmem10, pscpu10, hist10, and many useful functions

source $ZSH/oh-my-zsh.sh


# User configuration

# Zsh Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting

## Keybindings section
bindkey '^[[2~' overwrite-mode                                  # Insert key
bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
bindkey '^[[Z' undo                                             # Shift+tab undo last action
bindkey '^Z' undo                                             # Shift+tab undo last action
bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace

# Globally needed enviroment variables 
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR=vim
export VISUAL=vim
export BROWSER=google-chrome-stable

# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-r

# highlight with less using source-highlight
export LESSOPEN="| /path/to/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# zsh-autosuggestions plugin - It suggests commands as you type based on history and completions.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# syntax-highlighting plugin - Add syntax highlighting for commands
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history substring search plugin - Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up			
bindkey '^[[B' history-substring-search-down


# Aliases
alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -h'                                            # Show sizes in MB
alias la='ls -lhAFG --group-directories-first'
alias npm="echo '\033[0;31mUse pnpm\033[0m\n' && npm $*"
alias gitnp="git --no-pager"
alias open="xdg-open"

# NVM
source /usr/share/nvm/init-nvm.sh

# pnpm - tabtab source for packages - uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

export LESS="-F -X $LESS"
export DEFAULT_USER=mofarah
