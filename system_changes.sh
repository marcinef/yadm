#!/usr/bin/env bash

echo "Performing system wide configuration"

## Disable beep/bell
echo "blacklist pcspkr" | sudo tee /etc/modprobe.d/nobeep.conf
sudo rmmod pcspkr
