#!/usr/bin/env bash

echo "Checking to see if Ansible is already installed"
if hash ansible 2>/dev/null; then
  echo "Ansible is already installed"
  exit 2
fi

echo "Adding PPA, then installing Ansible"
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible 
