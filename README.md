## Install

### Install tmux and zsh

```
brew install tmux
brew install zsh
brew install reattach-to-user-namespace
```

### clone the dotfile repo
```
cd ~
git clone https://github.com/notuscloud/dotfiles.git
```

#### OS branch switch

* If you're using `macos` 
```
git checkout macos
```

* If you're using `linux`
```
git checkout linux
```

### Config tmux
```
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/tmux_shell_prompt ~/tmux_shell_prompt
```

### Config+Install zsh/ohmyzsh

#### Install Oh-My-Zsh
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

```
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.shell_prompt.sh ~/.shell_prompt.sh
```

### Configuring VIM

* Install Vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

```
ln -s ~/dotfile/.vimrc ~/.vimrc
``` 
#### Install the plugins

* Open vim
* `:PluginInstall` 

#### Install inconsolata font

* Clone the repo from github
```
git clone https://github.com/powerline/fonts.git
```

* Install inconsolata-g for powerline

### Change color scheme

Edit your `~/.vimrc` file and update the line `let g:airline_theme='wombat'`
with the color scheme of your choice

#### Capture color scheme from vim airline theme

* Change statusbar color scheme
Use `:TmuxlineSnapshot ~/tmux_shell_prompt` from a vim in a tmux

* Change prompt color scheme
Use `:PromptlineSnapshot ~/dotfile/.shell_prompt.sh
