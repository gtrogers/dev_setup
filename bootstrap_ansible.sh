#!/usr/bin/env bash

apt-get update
apt-get install software-properties-common

apt-add-repository ppa:ansible/ansible -y

apt-get update
apt-get install ansible

