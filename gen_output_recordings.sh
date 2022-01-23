#!/bin/bash

mkv_file=$1
output_name=$2

### aac - audio file
ffmpeg -v quiet -stats -i "${mkv_file}" -acodec copy "${output_name}.aac"

### mp3 - audio file
ffmpeg -v quiet -stats -i "${output_name}.aac" -acodec libmp3lame "${output_name}.mp3"

### mp4 - video file
ffmpeg -v quiet -stats -i "${mkv_file}" "${output_name}.mp4"

mv "${mkv_file}" "${output_name}.mkv"

if scp ${output_name}.* bh:~/bootyhouse.org/mixes/ ; then
	rm -fr ${output_name}.*
fi

