#!/bin/bash

tag=$1

if [[ -z "$tag" ]]; then
  tag="latest"
fi

docker build . -t fcagil/chef-docker-runner-image:$tag