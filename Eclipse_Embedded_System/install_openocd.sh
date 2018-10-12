#!/bin/bash

# This bash file update and upgrade the system

echo "========================"
echo "Downloading openocd..."
echo "========================"

wget https://github.com/gnu-mcu-eclipse/openocd/releases/download/v0.10.0-8-20180512/gnu-mcu-eclipse-openocd-0.10.0-8-20180512-1921-centos64.tgz

sudo mkdir -p ${HOME}/opt
cd ${HOME}/opt
sudo tar xvf ~/gnu-mcu-eclipse-openocd-0.10.0-8-20180512-1921-centos64.tgz
sudo chmod -R -w ${HOME}/opt/gnu-mcu-eclipse/openocd/0.10.0-8-20180512-1921

echo "========================"
echo "Check if OpenOCD starts"
echo "========================"

sudo ${HOME}/opt/gnu-mcu-eclipse/openocd/0.10.0-8-20180512-1921/bin/openocd --version



