#!/usr/bin/env bash

ls /github -all

whoami
cat /etc/passwd
su - user
whoami
pwd

cd "ddnsc"
makepkg "${1}"
