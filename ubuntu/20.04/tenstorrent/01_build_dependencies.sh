#!/bin/bash

# Copyright (c) 2024 R. Tohid (@rtohid)
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

sudo apt update
sudo apt upgrade

sudo apt-add-repository universe

sudo apt install build-essential git git-lfs cmake curl
sudo apt install python3-pip

sudo apt install software-properties-common=0.99.9.12 build-essential=12.8ubuntu1.1 \
        python3.8-venv=3.8.10-0ubuntu1~20.04.9 libgoogle-glog-dev=0.4.0-1build1     \
        libyaml-cpp-dev=0.6.2-4ubuntu1 libboost-all-dev=1.71.0.0ubuntu2             \
        libsndfile1=1.0.28-7ubuntu0.2 libhwloc-dev graphviz patchelf

sudo apt install git git-lfs cmake=3.16.3-1ubuntu1.20.04.1 \
        pandoc libtbb-dev libcapstone-dev pkg-config

wget https://apt.llvm.org/llvm.sh
chmod u+x llvm.sh
sudo ./llvm.sh 17
sudo apt install libc++-17-dev libc++abi-17-dev

python3 -m venv ~/.python_envs/tt_grayskull
