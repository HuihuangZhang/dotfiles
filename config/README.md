# config repo

This repo is just for config files, then I can manage them in github.

## Usage

### nvim

```bash
git clone <this-repo>
mkdir ~/.config
cd ~/.config
ln -s <this-repo>/nvim
```

### shell

```zsh
git clone <this-repo>
ln -s <this-repo>/shell ~/.config/shell
```

编辑 `~/.zshrc` 文件，引入 `init.zsh` 文件

``` zsh
source $HOME/.config/shell/init.zsh
```

## others

good reference:

1. [nvim config](https://github.com/brainfucksec/neovim-lua/tree/main/nvim)
