#!/bin/bash

tag=$1

if [[ -z "$tag" ]]; then
  tag="latest"
fi

docker run -it registry.gitlab.com/fcagil/com.fcagroup.wisdom.chef-docker-runner-image:$tag /bin/bash -c "/opt/chefdk/bin/chef -v && docker -v"

exit $?