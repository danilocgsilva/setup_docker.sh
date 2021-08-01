#!/bin/bash

set -e

if [ -z $1 ]; then
	DOCKER_ENVIRONMENT=docker_environment
else
	DOCKER_ENVIRONMENT=$1
fi

if [ ! -d $DOCKER_ENVIRONMENT ]; then
	mkdir $DOCKER_ENVIRONMENT
fi

cd $DOCKER_ENVIRONMENT
git clone git@github.com:danilocgsilva/simplified_lamp_docker.git .
./setup_env.sh

rm -rf .git

