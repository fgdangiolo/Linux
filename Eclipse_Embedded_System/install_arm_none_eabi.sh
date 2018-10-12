#!/bin/bash

# This bash file update and upgrade the system

echo "============================="
echo "Downloading arm-none-eabi..."
echo "============================="

wget https://github.com/gnu-mcu-eclipse/arm-none-eabi-gcc/releases/download/v7.3.1-1.1/gnu-mcu-eclipse-arm-none-eabi-gcc-7.3.1-1.1-20180724-0637-centos64.tgz

sudo mkdir -p ${HOME}/opt
cd ${HOME}/opt
sudo tar xvf ~/gnu-mcu-eclipse-arm-none-eabi-gcc-7.3.1-1.1-20180724-0637-centos64.tgz
sudo chmod -R -w ${HOME}/opt/gnu-mcu-eclipse/arm-none-eabi-gcc/7.3.1-1.1-20180724-0637

echo "========================"
echo "Testing arm-none-eabi.."
echo "========================"

sudo ${HOME}/opt/gnu-mcu-eclipse/arm-none-eabi-gcc/7.3.1-1.1-20180724-0637/bin/arm-none-eabi-gcc --version



