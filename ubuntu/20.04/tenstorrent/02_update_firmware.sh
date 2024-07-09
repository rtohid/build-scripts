#!/bin/bash

# Copyright (c) 2024 R. Tohid (@rtohid)
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

source ~/.python_envs/tt_grayskull/bin/activate

# TT-KMD (Tenstorrent Kernel Module)
echo
echo "*** Installing tt-kmd (Tenstorrent Kernel Module) ***"
sudo apt install dkms
git clone https://github.com/tenstorrent/tt-kmd.git
cd tt-kmd
git checkout -b ttkmd-1.27.1 ttkmd-1.27.1
sudo dkms add .
sudo dkms install tenstorrent/1.27.1
sudo modprobe tenstorrent

cd ..

echo
echo "*** DONE installing tt-kmd ***"
echo

# TT-FLASH (Tenstorrent Firmware Update Utility)
echo
echo "*** Installing tt-flash (Tenstorrent Firmware Update Utility) ***"
sudo apt install cargo
pip install -U urllib3 # default is outdated, causing the follwing command to fail
pip install git+https://github.com/tenstorrent/tt-flash.git

echo
echo "*** Done installing tt-flash ***"
echo

# Update Firmware (Tenstorrent Firmware)
echo
echo "*** Updating the firmware (Tenstorrent Firmware) ***"
wget https://github.com/tenstorrent/tt-firmware/raw/main/fw_pack-80.9.0.0.fwbundle
~/.python_envs/tt_grayskull/bin/tt-flash --fw-tar fw_pack-80.9.0.0.fwbundle --force
echo
echo "*** Done updating the firmware ***"
echo

echo
echo "        *************************"
echo "        <<< PLEASE REBOOT NOW >>>"
echo "        *************************"
echo
