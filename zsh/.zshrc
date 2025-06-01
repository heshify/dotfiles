# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
 
fpath=(~/.zsh/zsh-completions/src $fpath)
autoload -Uz compinit
compinit
 
# Menu select for tab
zstyle ':completion:*' menu select
 
# Set history file location and size
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Share history between all zsh sessions
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

# Make sure each command is appended immediately, not just on shell exit
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
 
# plugins 
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# Set personal aliases
alias tmux="tmux -u"
alias vim="nvim"
alias vi="\vim"

alias ls="ls -p -G"
alias la="ls -A"
alias ll="ls -l"
alias lla="ll -A"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

bindkey -s ^f "tmux-sessionizer\n"

# pnpm
export PNPM_HOME="/home/mahesh/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/mahesh/.bun/_bun" ] && source "/home/mahesh/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
