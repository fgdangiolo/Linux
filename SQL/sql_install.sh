#!/bin/bash

#https://docs.influxdata.com/influxdb/v2.1/install/?t=Linux

echo "======================="
echo "Update and Upgrade..."
echo "======================="

sudo apt-get update
sudo apt-get upgrade -y

echo "======================"
echo "Installing SQL..."
echo "======================"

#1) Install InfluxDB as a service with systemd:
sudo apt install mysql-server


#2) Start the InfluxDB service:

sudo systemctl start mysql.service

