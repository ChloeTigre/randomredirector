#!/bin/bash
Z_HOSTNAME=$1
STACK_NAME=${2:-randred}

if [ -z "${Z_HOSTNAME}" ]; then
    echo "Usage: $0 hostname_to_serve [stack_name]"
    exit 1
fi

export RANDOMREDIRECTOR_TRAEFIK_RULES='Host(`'$Z_HOSTNAME'`)'
cat docker-compose.yml | envsubst
