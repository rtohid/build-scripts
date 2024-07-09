#!/bin/bash

# Copyright (c) 2024 R. Tohid (@rtohid)
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

source ~/.python_envs/tt_grayskull/bin/activate

CURRENT_DIR=$1
PREFIX="${CURRENT_DIR:=$(pwd)}"

export ARCH_NAME=grayskull
export TT_METAL_HOME=${PREFIX}/tt-metal
export PYTHONPATH=${TT_METAL_HOME}
export TT_METAL_ENV=dev
export PYTHON_ENV_DIR=/home/stellar/.python_envs/tt_grayskull/


# tt-metal
git clone https://github.com/tenstorrent/tt-metal.git --recurse-submodules ${TT_METAL_HOME}
cd ${TT_METAL_HOME}
git submodule foreach 'git lfs fetch --all && git lfs pull'
${TT_METAL_HOME}/build_metal.sh


# echo "*** Installing tt-metal ***"
# make build
# source ${TT_METAL_HOME}/build/python_env/bin/activate
# echo "*** Done installing tt-metal ***"
