CURRENT=$(cd $(dirname $0) && pwd)
cd $CURRENT
cd ../..
git clone git@github.com:utyujinn/dotfiles.git
cd $CURRENT
sh ./install.sh
