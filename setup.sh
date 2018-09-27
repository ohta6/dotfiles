#!/bin/zsh

DOT_FILES=( vimrc zshrc zshenv tmux.conf latexmkrc)

for file in ${DOT_FILES[@]}
do
	rm $HOME/"."$file
	ln -s $HOME/dotfiles/$file $HOME/"."$file
done

# zplug install
if ! test -e "$HOME/.zplug"; then
    mkdir $HOME/.zplug
    export ZPLUG_HOME=$HOME/.zplug
    git clone http://github.com/zplug/zplug $ZPLUG_HOME
fi

# toml file for dein.vim
if ! test -e "$HOME/.cache/dein/userconfig"; then
    mkdir -p $HOME/.cache/dein/userconfig
    ln -s $HOME/dotfiles/plugins.toml $HOME/.cache/dein/userconfig/plugins.toml
    ln -s $HOME/dotfiles/plugins_lazy.toml $HOME/.cache/dein/userconfig/plugins_lazy.toml
fi
