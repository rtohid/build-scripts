#!/bin/bash

# Copyright (c) 2024 R. Tohid (@rtohid)
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

source ~/.python_envs/tt_grayskull/bin/activate

echo "*** Enabling huge pages ***"
sudo -E python3 setup_hugepages.py enable && sudo -E python3 setup_hugepages.py check
echo "*** Done enabling huge pages ***"

