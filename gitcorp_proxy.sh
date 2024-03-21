# modified from Kevin Matzen's script
SESSION=$1

# override ssh with sshpass
function ssh() {
    sshpass -f ~/.ldap /usr/bin/ssh "$@"
}

# override rsync with sshpass
function rsync() {
    sshpass -f ~/.ldap /usr/bin/rsync "$@"
}

ssh $USER@$SESSION 
mkdir -p ~/.ssh

if [ ! -f ~/.ssh/id_rsa_git_corp ]; then
    ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa_git_corp
    echo "Created new id_rsa_git_corp key pair"
else
    echo "Found existing id_rsa_git_corp key pair"
fi

if [ ! -f ~/.ssh/config ]; then
    touch ~/.ssh/config
fi

if ! grep -q git.corp.adobe.com ~/.ssh/config; then
    echo -e "\nHost git.corp.adobe.com\n    Hostname git.corp.adobe.com\n    IdentityFile ~/.ssh/id_rsa_git_corp\n    ProxyCommand ssh -p 2222 localhost nc %h %p\n" >> ~/.ssh/config
fi

echo "If you have not done this, add this key to git.corp.adobe.com:"
cat ~/.ssh/id_rsa_git_corp.pub


rsync -avP $USER@$SESSION:'~/.ssh/id_rsa_git_corp ~/.ssh/id_rsa_git_corp.pub' ~/.ssh/

ssh-add ~/.ssh/id_rsa_git_corp


echo "The next command will hang and you should be connected"
echo "Note: on Mac, make sure to enable System Preferences -> Sharing -> Remote Login"
echo "Note: you may need to type your Mac password on the remote machine to enable the tunnel"
ssh -N -R 2222:localhost:22 $SESSION -o ControlMaster=no