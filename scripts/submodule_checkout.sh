#!/usr/bin/env bash

SSH_KEY="$2"
MODULE_DIR="$1"

mkdir -p $HOME/.ssh
echo "$SSH_KEY" > $HOME/.ssh/id_rsa
chmod 600 $HOME/.ssh/id_rsa
git submodule update --init $MODULE_DIR
