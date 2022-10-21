#!/bin/bash
# source /home/glue_user/.bashrc
if [[ ! "$?" -eq 1 ]]; then
    livy-server start
    if [[ -z ${DISABLE_SSL} ]]; then
        echo "Starting Jupyter with SSL"
        pip3 install -r /home/glue_user/requirements.txt &&
        jupyter lab --no-browser --ip=0.0.0.0 --allow-root --ServerApp.root_dir=/home/glue_user/workspace/jupyter_workspace/ --ServerApp.token='' --ServerApp.password='' --certfile=/home/glue_user/.certs/my_key_store.pem --keyfile /home/glue_user/.certs/my_key_store_key.key
    else
        echo "SSL Disabled"
        pip3 install -r /home/glue_user/requirements.txt &&
        jupyter lab --no-browser --ip=0.0.0.0 --allow-root --ServerApp.root_dir=/home/glue_user/workspace/jupyter_workspace/ --ServerApp.token='' --ServerApp.password=''
    fi
fi