#!/bin/bash

cd `dirname $0`

docker cp yakyu_db-storage_1:/var/lib/mysql ./data/var/lib

DOCKER_REPOSITORY=takanamito/mysql-storage
DATE_TAG=$(date '+%Y%m%d')
docker build --tag ${DOCKER_REPOSITORY}:${DATE_TAG} .
docker tag ${DOCKER_REPOSITORY}:${DATE_TAG} ${DOCKER_REPOSITORY}:latest

docker push ${DOCKER_REPOSITORY}:${DATE_TAG}
docker push ${DOCKER_REPOSITORY}:latest
