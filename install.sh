#!/bin/bash

# Install LXD via snap:
sudo snap install lxd
# Ensure the myuser can execute lxc/lxd commands by adding it to the lxd group:
sudo usermod myuser -aG lxd
# Initialize LXD and answer the prompts presented:
lxd init
# Would you like to use LXD clustering? (yes/no) [default=no]:
# Do you want to configure a new storage pool? (yes/no) [default=yes]:
# Name of the new storage pool [default=default]:
# Name of the storage backend to use (dir, lvm, ceph, btrfs) [default=btrfs]:
# Create a new BTRFS pool? (yes/no) [default=yes]:
# Would you like to use an existing block device? (yes/no) [default=no]: yes
# Path to the existing block device: /dev/xvdg
# Would you like to connect to a MAAS server? (yes/no) [default=no]:
# Would you like to create a new local network bridge? (yes/no) [default=yes]:
# What should the new bridge be called? [default=lxdbr0]:
# What IPv4 address should be used? (CIDR subnet notation, “auto” or “none”) [default=auto]:
# What IPv6 address should be used? (CIDR subnet notation, “auto” or “none”) [default=auto]:
# Would you like LXD to be available over the network? (yes/no) [default=no]:
# Would you like stale cached images to be updated automatically? (yes/no) [default=yes]
# Would you like a YAML "lxd init" preseed to be printed? (yes/no) [default=no]: