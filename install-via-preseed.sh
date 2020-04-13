#!/bin/bash

# Configure LXD
cat preseed.yaml | lxd init --preseed

# Example: preseed.yaml
# --------------------------
# config:
#   core.https_address: '[::]:8443'
#   core.trust_password: pinehead
# networks:
# - config:
#     ipv4.address: auto
#     ipv6.address: auto
#   description: ""
#   managed: false
#   name: lxdbr0
#   type: ""
# storage_pools:
# - config:
#     source: /dev/xvdg
#   description: ""
#   name: default
#   driver: zfs
# profiles:
# - config: {}
#   description: ""
#   devices:
#     eth0:
#       name: eth0
#       nictype: bridged
#       parent: lxdbr0
#       type: nic
#     root:
#       path: /
#       pool: default
#       type: disk
#   name: default
# cluster: null