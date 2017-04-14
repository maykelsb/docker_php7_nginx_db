#!/bin/bash
docker-machine start
eval $(docker-machine env)
IP="$(docker-machine ip)"
echo "Usando o ip: ${IP}"
