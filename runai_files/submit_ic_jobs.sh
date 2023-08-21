#!/bin/bash

runai config project g3i-dev
runai submit sai-0 \
    --large-shm \
	-i docker-matrix-experiments-snapshot.dr-uw2.adobeitc.com/runai/clio-base-beta:0.19 \
    --interactive \
    --service-type portforward --port 8080:80 \
    -l research_jack_id=5261 \
    -g 1 
    # --command -- sleep infinity


# runai submit --interactive --name exif-expansion -p clio-applications -g 1 -i
# docker-clio-release.dr-uw2.adobeitc.com/inference/clio-inference-cuda12:0.0.5.3
# -l asml_model_name=clio-latent-diffusion --node-pool a100-3
# --service-type=external-url --port 8888 -e pname=clio-applications -e
# jname=exif-expansion --command -- /bin/bash -c /runai_entrypoint.sh
#
#
#
# runai submit --large-shm -e NCCL_SOCKET_IFNAME=eth0 -e FI_PROVIDER=efa -e
# FI_EFA_USE_DEVICE_RDMA=1 --name kai-dev -i
# docker-matrix-experiments-snapshot.dr-uw2.adobeitc.com/runai/clio-base-beta:0.10
# --extended-resource vpc.amazonaws.com/efa=2 --extended-resource
# hugepages-2Mi=2048Mi -g 1 --node-pools a100-1 --backoff-limit 2 -p g3i-3dgentech
# -l research_jack_id=5261 --command -- sleep infinity
