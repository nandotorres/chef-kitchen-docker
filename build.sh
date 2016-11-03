#!/bin/bash

tag=$1

if [[ -z "$tag" ]]; then
  tag="latest"
fi

docker build . -t fcagil/com.fcagroup.wisdom.chef-docker-runner-image:$tag