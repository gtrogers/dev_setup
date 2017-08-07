#!/usr/local/env bash

apt-get update
apt-get install software-properties-common

apt-add-repository ppa:ansible/ansible -y

apt-get update
apt-get install ansible -y

ansible-playbook -i "localhost," -c local dev-setup.yml --extra-vars="dev_user_password=`mkpasswd --method=sha-512 $PASS` github_user=$GITHUB"
