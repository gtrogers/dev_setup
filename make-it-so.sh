#!/usr/local/bin bash

./bootstrap-ansible
ansible-playbook --check -i "localhost," -c local dev-setup.yml
