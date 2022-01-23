# Mike's Streaming Helpers

Collection of semi-useful scripts for working with OBS / Twitch / Streaming

## fix_clips.sh

When I'm _stealing_ random video clips to decorate my stream, it's hard to remember the ffmpeg command flags, so this takes source file and end height & width and does the necessary.  Good for `for` looping over a set of videos.

### todo: 

- [ ] feed it a list and have it do some parallel-ing magic.  
- [ ] defaults


## gen_output_recordings.sh

Takes a OBS recording mkv file and a title as input and makes an .mp3, .aac, .mp4 & renames the mkv to match.

Then scp's the lot to my webhost.

### todo:

- [ ] Update a index.html file with d/l links
- [ ] Given DJ, show, and recording title generate file name, with date as taken from OBS mkv name (or as input)
- [ ] seperate index files for different shows
- [ ] config file with dj / show names for quick selection, defaults 
