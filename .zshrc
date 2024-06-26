# Znap setup
[[ -r ~/zsh_repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/zsh_repos/znap
source ~/zsh_repos/znap/znap.zsh  # Start Znap
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions
eval "$(starship init zsh)"

# History and neofetch
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
neofetch -A "Mac OS X"

# load nvim
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$HOME/go/bin:$PATH

if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi

# Completion
ZSH_AUTOSUGGEST_STRATEGY="completion"
