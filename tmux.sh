# check if tmux exists
if [ -z "$(which tmux)" ]; then
    if [ "$(uname)" == "Linux" ]; then
        sudo apt-get install tmux
    fi

    # if the system is mac
    if [ "$(uname)" == "Darwin" ]; then
        brew install tmux
    fi
fi  

cp tmux/tmux.conf ~/.tmux.conf
cp tmux/tmux.conf.local ~/.tmux.conf.local


