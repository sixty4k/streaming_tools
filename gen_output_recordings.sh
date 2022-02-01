#!/bin/bash

convert_obs_outputs() {
  local mkv_file=$1
  local output_name=$2

  ### aac - audio file
  ffmpeg -v quiet -stats -i "${mkv_file}" -acodec copy "${output_name}.aac"
  
  ### mp3 - audio file
  ffmpeg -v quiet -stats -i "${output_name}.aac" -acodec libmp3lame "${output_name}.mp3"
  
  ### mp4 - video file
  ffmpeg -v quiet -stats -i "${mkv_file}" "${output_name}.mp4"
  
  mv "${mkv_file}" "${output_name}.mkv"
}

upload_and_remove_local_file() {
  local output_name=$1

  if scp ${output_name}.* bh:~/bootyhouse.org/mixes/ ; then
	  rm -fr ${output_name}.*
  fi
}

build_output_name() {
	## output_name should be:
	# - dj name
	# - show name
	# - show date
	# - show title
	## ex: sixty4k_mwmr_20220117_full_moon_rambling.<extension>

  mkv_file=$1
  file_date=$(echo ${mkv_file} | cut -d' ' -f1 | sed -e's/-//g' )
  dj="sixty4k"
  show="mwmr"
  title="just_a_regular_monday"
    
  return "${dj}_${show}_${file_date}_${title}"
}

main() {
mkv_file=$1
## standard OBS file name:
# "2022-01-17 19-07-07.mkv"

output_name=  

}



