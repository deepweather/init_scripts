#!/bin/bash
sudo adduser $1
sudo usermod -aG sudo $1
sudo mkdir -p /home/$1/.ssh
sudo cp /root/.ssh/authorized_keys /home/$1/.ssh/
sudo chown -R $1:$1 /home/$1/.ssh
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys