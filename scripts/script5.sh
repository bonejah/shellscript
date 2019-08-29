#!/bin/bash

# The first complex program

# Show that the program start
echo "Starting program..."

# Show hostname
echo "Machine name: $(hostname)"

# Show version kernel
echo "Version kernel: $(uname -r)"

# Show info about machine
echo "Info about machine: $(uname -m)"

# Show device in available blocks
echo "Devices in available blocks: "
diskutil list

# Show space system
df -h

