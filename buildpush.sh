#!/bin/bash

set -e

echo "Building container image"
docker build -t quay.io/nycrecords/rhel7-ansible --build-arg RHSM_USERNAME=$RHSM_USERNAME --build-arg RHSM_PASSWORD=$RHSM_PASSWORD .

echo "Pushing to Quay"
docker push quay.io/nycrecords/rhel7-ansible
