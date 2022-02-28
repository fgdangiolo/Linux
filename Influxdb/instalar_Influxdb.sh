#!/bin/bash

#https://docs.influxdata.com/influxdb/v2.1/install/?t=Linux

echo "======================="
echo "Update and Upgrade..."
echo "======================="

sudo apt-get update
sudo apt-get upgrade -y

echo "======================"
echo "Installing Influxdb..."
echo "======================"

#1) Install InfluxDB as a service with systemd:
wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.1.1-amd64.deb
sudo dpkg -i influxdb2-2.1.1-amd64.deb

#2) Start the InfluxDB service:

sudo service influxdb start

#Installing the InfluxDB package creates a service file at /lib/systemd/services/influxdb.service to start InfluxDB as a background service on startup.

#3) Restart your system and verify that the service is running correctly:

sudo service influxdb status

#Get started with InfluxDB
#https://docs.influxdata.com/influxdb/v2.1/get-started/
