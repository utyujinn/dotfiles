cd $(dirname $0)
cp ../.config ~/.config -r
cp ../.Xmodmap    ~/.Xmodmap
cp ../.alacritty.toml ~/.alacritty.toml
cp ../.gitconfig ~/.gitconfig
cp ../.tmux.conf  ~/.tmux.conf
cp ../.vimrc      ~/.vimrc
cp ../.xinitrc    ~/.xinitrc
cp ../.zshrc      ~/.zshrc

curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
