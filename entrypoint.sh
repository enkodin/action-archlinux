#!/usr/bin/env bash

pwd
ls -all

cd "ddnsc"
makepkg "${1}"
