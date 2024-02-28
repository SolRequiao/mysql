#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

source "$SCRIPT_DIR/../.env"

docker exec $CONTAINER_NAME mysqldump -u root --password=$ROOT_PASSWORD --all-databases > $PWD/backup/dump.sql
#docker exec $CONTAINER_NAME mysqldump -u root --password=$ROOT_PASSWORD data_base > $PWD/backup/dump.sql