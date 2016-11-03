#!/bin/bash

tag=$1

if [[ -z "$tag" ]]; then
  tag="latest"
fi

docker run -it registry.gitlab.com/fcagil/chef-docker-runner-image: /bin/bash -c "/opt/chefdk/bin/chef -v && docker -v"

exit $?