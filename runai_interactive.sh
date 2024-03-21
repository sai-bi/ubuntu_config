#!/bin/bash

job_name="sai-gs"

# runai delete job $job_name
runai submit --service-type=external-url \
    --large-shm -e NCCL_SOCKET_IFNAME=eth0 -e FI_PROVIDER=efa -e \
    FI_EFA_USE_DEVICE_RDMA=1 \
    --name $job_name \
    -i ${DOCKER} \
    --extended-resource vpc.amazonaws.com/efa=4 \
    --extended-resource hugepages-2Mi=2048Mi \
    -g 8 \
    --port 8000 --custom-url https://sensei-eks02.infra.adobesensei.io/g3i-3dgentech/${job_name}/ \
    --node-pools $NODE_POOL \
    -p $PROJ_NAME \
    -l research_jack_id=$JACK_ID \
    -l intiative_activity_type=${ACTIV_TYYE} \
    --command -- '"sudo chmod -R 777 /home/user; cd /sensei-fs/users/sbi/; . ./setup.sh; sleep infinity"'

