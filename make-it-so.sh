#!/usr/bin/env bash

if [ -z "$PASS" ]; then echo "please set the PASS variable for the dev user password"; exit -1; fi
if [ -z "$GITHUB" ]; then echo "please set the GITHUB variable for the github account to pull keys from"; exit -1; fi

apt-get update
apt-get install software-properties-common

apt-add-repository ppa:ansible/ansible -y

apt-get update
apt-get install ansible -y

PASSWD=`mkpasswd --method=sha-512 $PASS`

ansible-playbook -i "localhost," -c local dev-setup.yml --extra-vars="dev_user_password=$PASSWD github_user=$GITHUB"
