### Using OMZ ###
export ZSH="$HOME/.oh-my-zsh"
### Theme ###
ZSH_THEME="robbyrussell"

### Plugins ###
plugins=(
  git
  tmux
  docker
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# ** NOTE ** causes a specific conflict with Kitty terminal, check the main README for more details
ZSH_TMUX_AUTOSTART=true

### Move zsh dumps outside of the user's home directory ###
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

###  Add history timestamp to the history command ###
HIST_STAMPS="mm/dd/yyyy"
# Looks like:  401  3/5/2026 14:55  nvim .zshrc

### alias MacOS DNS flushing ### 
alias flush-dns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

alias copypath="pwd | pbcopy"
### Functions ###

# Config editor
function config() {
  local base="$HOME/.config"
  local dir="$base/$1"

  if [[ -z "$1" ]]; then
    echo "Usage: config <config-directory-name>"
    echo -e "\nOptions:"

    shopt -s nullglob
    local options=( "$base"/* )
    shopt -u nullglob

    if (( ${#options[@]} > 0 )); then
      for d in "${options[@]}"; do
        [[ -d "$d" ]] && printf '  %s\n' "$(basename "$d")"
      done
    else
      command ls "$base"
    fi

    return 1
  fi

  [[ ! -d "$dir" ]] && { echo "Directory not found: $1"; return 1; }

  "${EDITOR:-vi}" "$dir"
}

### Obsidian CLI (Unofficial, useful in conjunction with Lazyvim) ###
function ob() {
  local dir
  # Find all Obsidian vaults in likely locations, sort by most recently modified
  dir=$(find ~/Documents ~/Notes -type d -name ".obsidian" 2>/dev/null \
        -exec stat --format '%Y %n' {} + | \
        sort -nr | \
        awk '{sub(/\/.obsidian$/, "", $2); print $2}' | \
        fzf --prompt="Select Obsidian vault: ")

  [[ -z "$dir" ]] && return

  "${EDITOR:-vi}" "$dir"
}

# Enables syntax highlighting for man pages
function mann() {
  [[ $# -eq 0 ]] && { echo "usage: mann <man-topic>"; return 1; }

  man "$@" | col -bx | bat -l man --style=plain
}

# Quick cheatsheet
function cht() {
  curl cht.sh/"$1"
}Tools like fzf and bat are needed for custom functions included in the

source $ZSH/oh-my-zsh.sh
