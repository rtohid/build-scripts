# Copyright (c) 2024 R. Tohid (@rtohid)
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

source ~/.python_envs/tt_grayskull/bin/activate

CURRENT_DIR=$1
PREFIX="${CURRENT_DIR:=$(pwd)/tt-metal}"

export ARCH_NAME=grayskull
export TT_METAL_HOME=${PREFIX}
export PYTHONPATH=${TT_METAL_HOME}
export TT_METAL_ENV=dev
export PYTHON_ENV_DIR=/home/stellar/.python_envs/tt_grayskull/

echo
echo "*** TT_METAL_HOME is set to ${TT_METAL_HOME} ***"
echo