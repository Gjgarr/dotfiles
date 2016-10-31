# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

# User config
export PATH="/usr/local/bin:/usr/bin:/usr/local/games:/usr/games:$PATH"
export PATH="$HOME/.bin:$PATH"
source $ZSH/oh-my-zsh.sh
export TERM="xterm-256color"

# Custom aliases
if [ -f $HOME/.zsh_aliases ]; then
	source $HOME/.zsh_aliases
fi
