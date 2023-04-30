# dotfiles

## How to use
1. To install this, Go to your home directory, and do this command.
```
git clone https://github.com/utyujinn/dotfiles
```
2. Next, move files.
```
mv dotfiles/.vimrc .vimrc
```

3. And if you are using linux, do this to apply the vim-jetpack plugin.
```
curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
```

4. Open vim and Do this.
```
:JetpackSync
```
