#!/bin/bash

ffmpeg -i "${1}" -vf scale=${2}:${3},setsar=1:1 fixed_"${1}"
