if [ -z "$(which runai)" ]; then
    if [ "$(uname)" == "Linux" ]; then
        wget --content-disposition https://sensei-eks01.infra.adobesensei.io/cli/linux
    fi

    # if the system is mac
    if [ "$(uname)" == "Darwin" ]; then
        wget --content-disposition https://sensei-eks01.infra.adobesensei.io/cli/darwin
    fi

    sudo mv runai /usr/local/bin 
fi  


mkdir -p ~/.kube
cp runai_files/runai_eks01.yaml ~/.kube
cp runai_files/runai_eks02.yaml ~/.kube





