#!/bin/bash

# Copyright (c) 2024 R. Tohid (@rtohid)
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

source ~/.python_envs/tt_grayskull/bin/activate

# TT-SMI (Tenstorrent System Management Interface)
echo
echo "*** Installing tt-smi (Tenstorrent System Management Interface) ***"
pip install pip-tools
wget https://raw.githubusercontent.com/tenstorrent/tt-metal/main/pyproject.toml
pip-compile -o requirements.txt pyproject.toml
pip install git+https://github.com/tenstorrent/tt-smi
echo "*** Done installing tt-smi ***"

echo
echo "****************************************************************************************"
echo "* <<<<< MAKE SURE 'requirements.in' REFLECTS THE LATEST REQUIREMENTS FOUND BELOW >>>>> *"
echo "*           https://github.com/tenstorrent/tt-smi/blob/main/pyproject.toml             *"
echo "****************************************************************************************"
