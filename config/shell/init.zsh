script_dir="$(dirname "$0")"

echo "include $script_dir/zsh/*.zsh"
source $script_dir/zsh/plugin.zsh
source $script_dir/zsh/command.zsh
