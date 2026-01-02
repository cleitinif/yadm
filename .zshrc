setopt AUTO_CD             # Change to a directory by typing its name
setopt COMPLETE_IN_WORD   # Allow tab completion in the middle of a word
setopt EXTENDED_GLOB      # Use extended globbing syntax
setopt EXTENDED_HISTORY   # Save timestamp for each command in history
setopt INC_APPEND_HISTORY  # Add commands to history immediately
setopt SHARE_HISTORY      # Share command history data
setopt HIST_EXPIRE_DUPS_FIRST  # Expire duplicate entries first when trimming history
setopt HIST_IGNORE_DUPS   # Ignore duplicate entries in history
setopt HIST_IGNORE_ALL_DUPS  # Delete old entries if a new entry is a duplicate
setopt HIST_FIND_NO_DUPS  # Do not display a command in history search if it
setopt HIST_SAVE_NO_DUPS  # Do not write duplicate entries to the history file
setopt HIST_IGNORE_SPACE  # Ignore commands that start with a space
setopt HIST_VERIFY       # Do not add commands to history until executed
setopt APPEND_HISTORY     # Append new history lines to the history file
setopt HIST_NO_STORE     # Do not store commands in history

plugins=(git kubectl aws zsh-autosuggestions zsh-syntax-highlighting terraform)

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

 
# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval "$(mise activate zsh)"

export PATH="$HOME/.local/bin:$PATH"