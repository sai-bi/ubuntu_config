if [ "$(uname)" == "Linux" ]; then
    if [ -z "$(which nvim)" ]; then
        curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
        chmod u+x nvim.appimage
        sudo cp nvim.appimage /usr/local/bin/nvim
        sudo apt install libfuse2
        sudo apt-get update
        sudo apt-get install python3-pip
        sudo apt-get install exuberant-ctags
    fi
fi

    
    
if [ "$(uname)" == "Darwin" ]; then
    if [ -z "$(which nvim)" ]; then
        brew install neovim
    fi
fi


pip3 install pynvim
# check if dir exists
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi 

cp nvim/.vimrc ~/.vimrc
mkdir -p ~/.config/nvim
cp nvim/init.vim  ~/.config/nvim


