#!/bin/bash
dev_env=kva-dev

docker stop $dev_env
docker rm $dev_env
docker build -t $dev_env . --no-cache
docker run -d -it --name $dev_env \
    -p 4200:4200 \
    --mount type=bind,source="$(pwd)",target=/home \
    $dev_env:latest
docker exec -it $dev_env /bin/bash