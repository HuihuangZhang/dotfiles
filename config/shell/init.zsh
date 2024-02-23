script_dir="$(dirname "$0")"

export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

echo "include $script_dir/zsh/plugin.zsh"
source $script_dir/zsh/plugin.zsh
source $script_dir/zsh/command.zsh
