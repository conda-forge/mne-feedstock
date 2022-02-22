#!/bin/bash

# This is used to initialize the bash prompt on Linux.

. ~/.bashrc
. __PREFIX__/bin/activate
echo "Using Python: `which python`"
echo "This is MNE-Python `mne --version`"
