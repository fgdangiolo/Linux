#!/bin/bash

# This bash file test openocd

readonly discovery_board=stm32f4discovery.cfg
readonly frdm_k_46=frdm-kl46z.cfg


echo "========================"
echo "Check if OpenOCD starts"
echo "========================"

sudo ${HOME}/opt/gnu-mcu-eclipse/openocd/0.10.0-8-20180512-1921/bin/openocd --version

echo "========================"
echo "Testing..."
echo "========================"

sudo ${HOME}/opt/gnu-mcu-eclipse/openocd/0.10.0-8-20180512-1921/bin/openocd \
  -f board/$discovery_board


