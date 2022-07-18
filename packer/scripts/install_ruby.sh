#!/bin/bash
sudo killall apt apt-get;
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/dpkg/lock-frontend
sudo dpkg --configure -a;
apt update;
apt install -y ruby-full ruby-bundler build-essential;
