# check if the system is linux

# determine if zsh is installed on the system
if [ -z "$(which zsh)" ]; then
    if [ "$(uname)" == "Linux" ]; then
        # install zsh
        sudo apt-get install zsh
        # install oh-my-zsh
        sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
        # make zsh the default shell
        chsh -s $(which zsh)
    fi

    # if the system is mac
    if [ "$(uname)" == "Darwin" ]; then
        # install oh-my-zsh
        sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
        # make zsh the default shell
        chsh -s $(which zsh)
    fi
fi 

cp zsh/.zshrc ~/.zshrc








 

