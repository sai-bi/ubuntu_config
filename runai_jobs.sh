#!/bin/bash


runai submit-pytorch --large-shm \
    -e NCCL_SOCKET_IFNAME=eth0 -e FI_PROVIDER=efa -e FI_EFA_USE_DEVICE_RDMA=1 \
    --name $job_name \
    -i ${DOCKER} \
    --extended-resource vpc.amazonaws.com/efa=4 \
    --extended-resource hugepages-2Mi=2048Mi \
    -g 8 \
    --workers 3 \
    --node-pools $NODE_POOL \
    --backoff-limit 2 \
    -p $PROJ_NAME \
    -l research_jack_id=${JACK_ID} \
    -l intiative_activity_type=${ACTIV_TYYE} \
    --command -- bash \
    -c '"cd /sensei-fs/users/sbi/GitHub/minLRM/minLRM/; umask 007; mkdir ../experiments/log/$JOB_NAME/; bash runai_trainer.sh configs/sai_gs_scene_selfatt_pa_i256_lineardepth_2view_720ft.yaml 1>>../experiments/log/$JOB_NAME/$JOB_UUID.rank$RANK.log 2>>../experiments/log/$JOB_NAME/$JOB_UUID.rank$RANK.err"'
