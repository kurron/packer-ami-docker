#!/usr/bin/env bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate -var-file=variables.json ami.json
ansible-galaxy install --verbose --role-file ansible/requirements.yml
#packer build -var-file=variables.json ami.json
