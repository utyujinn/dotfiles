cd $(dirname $0)
cp ../.Xmodmap    ~/.Xmodmap
cp ../.alacritty.toml ~/.alacritty.toml
cp ../.gitconfig ~/.gitconfig
cp ../.i3 ~/.i3 -r
cp ../.tmux.conf  ~/.tmux.conf
cp ../.vimrc      ~/.vimrc
cp ../.xinitrc    ~/.xinitrc
cp ../.zshrc      ~/.zshrc

curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
