#!/bin/bash

target="*rsync*"

find / -name $target -print0 | xargs -0 rm -rf
