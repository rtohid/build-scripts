#!/bin/bash

# Copyright (c) 2024 R. Tohid (@rtohid)
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

source ~/.python_envs/tt_grayskull/bin/activate

echo "*** Enabling huge pages (first pass) ***"
wget https://raw.githubusercontent.com/tenstorrent/tt-metal/main/infra/machine_setup/scripts/setup_hugepages.py
sudo -E python3 setup_hugepages.py first_pass
echo "*** Done enabling huge pages (first pass) ***"

echo "        *************************"
echo "        <<< PLEASE REBOOT NOW >>>"
echo "        *************************"
