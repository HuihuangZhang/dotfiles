source ~/.zinit/bin/zinit.zsh

plugins=(git ruby rails)

# 快速目录跳转
zinit ice lucid wait='1'
# zinit light skywind3000/z.lua

# 语法高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting

# 自动建议
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# 补全
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions

# 加载 OMZ 框架及部分插件
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

zinit ice svn
zinit snippet OMZ::plugins/extract

zinit ice lucid wait='1'
zinit snippet OMZ::plugins/git/git.plugin.zsh

# 加载 pure 主题
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

# 加载它们的补全等
zinit ice mv="*.zsh -> _fzf" as="completion"
zinit snippet 'https://github.com/junegunn/fzf/tree/master/shell/completion.zsh'
zinit snippet 'https://github.com/junegunn/fzf/tree/master/shell/key-bindings.zsh'
zinit ice as="completion"
zinit snippet 'https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/fd/_fd'
zinit ice mv="*.zsh -> _exa" as="completion"
zinit snippet 'https://github.com/ogham/exa/blob/master/completions/zsh/_exa'
