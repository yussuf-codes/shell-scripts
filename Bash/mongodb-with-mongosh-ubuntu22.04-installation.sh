#!/bin/bash

wget -q -P ~/Downloads https://repo.mongodb.org/apt/ubuntu/dists/jammy/mongodb-org/7.0/multiverse/binary-amd64/mongodb-org-server_7.0.11_amd64.deb
sudo dpkg -i ~/Downloads/mongodb-org-server_7.0.11_amd64.deb

wget -q -P ~/Downloads https://downloads.mongodb.com/compass/mongodb-mongosh_2.2.9_amd64.deb
sudo dpkg -i ~/Downloads/mongodb-mongosh_2.2.6_amd64.deb

systemctl status mongod --no-pager
