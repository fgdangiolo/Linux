#!/bin/bash

#Grafana
#https://grafana.com/docs/grafana/latest/installation/debian/

echo "======================="
echo "Update and Upgrade..."
echo "======================="

sudo apt-get update
sudo apt-get upgrade -y

echo "======================"
echo "Installing Grafana..."
echo "======================"

#1) To install the latest Enterprise edition:
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
sudo wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

#Add this repository for stable releases:

echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

#After you add the repository:

sudo apt-get update
sudo apt-get install grafana-enterprise

#2) Start the server
#This starts the grafana-server process as the grafana user, which was created during the package installation.

#If you installed with the APT repository or .deb package, then you can start the server using systemd or init.d. If you installed a binary .tar.gz file, then you need to execute the binary.

#Start the server with systemd
#To start the service and verify that the service has started:

sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server

#Configure the Grafana server to start at boot:

sudo systemctl enable grafana-server.service

#3) Log in (https://grafana.com/docs/grafana/latest/getting-started/getting-started/)

#To log in to Grafana for the first time:

#Open your web browser and go to http://localhost:3000/. The default HTTP port that Grafana listens to is 3000 unless you have configured a different port.

#On the login page, enter admin for username and password.

#Click Log in. If login is successful, then you will see a prompt to change the password.
#Click OK on the prompt, then change your password. a prompt to change the password.
#Click OK on the prompt, then change your password.
