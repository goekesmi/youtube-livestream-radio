#!/bin/bash

# ffmpeg command block to configure an audio stream and static image streamed 
# to youtube.

DESTINATION=''
STREAM=''
IMAGE=''

source ./local.config

# I like logs. logs are not optional
export FFREPORT='file=stream-%t.log:level=24'

FPS=1  
# the local encoder on the test hardware gets angry when the framerate is lower
# than 1.  Thus, I've set this to the minimum value which makes everything happy

KFI=4
# Key Frame Interval, uses in the -g calculation


# For reason I can not explain, ffmpeg crashes randomly.  This restarts it, forever.
while true ;
do

ffmpeg  \
	-loop 1 -framerate $FPS -i $IMAGE \
	-f alsa -i hw:0,0 \
	-af bandpass=f=900:width_type=h:w=600 \
	-vcodec libx264 -pix_fmt yuv420p -preset superfast -maxrate 100k  -s  426x240 -r $FPS -g $(($FPS*$KFI)) -b:v 2500k \
	-acodec libmp3lame  -b:a 256k -ar 44100 -bufsize 512k \
	-f flv $DESTINATION/$STREAM
	
done;

# Now, the documentation blob.

# -loop 1 
# Loop forever on the input image(s) to create video

# -framerate $FPS      
# Match the input framerate to the output framerate so that you are cloning images
# to immediately discard them.

# -i hw:0,0
# Point at a hardware audio device to capture audio from.

# -preset superfast
# presets faster than superfast result in single color frames, and thus are
# useless

# -r $FPS
# Output frame rate.  As low as possible for this configuration

# -g $(($FPS*4))
# Group of Pictures interval, also known as keyframe interval.
# youtube maximum permitted is 1 keyframe per 4 seconds.  As it's
# a static image, I've pushed it to the max.  Youtube recommended
# is once per 2 seconds.




