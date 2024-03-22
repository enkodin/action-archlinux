#!/usr/bin/env bash

ls /github -all

cd "ddnsc"
makepkg "${1}"
