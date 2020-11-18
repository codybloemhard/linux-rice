#!/bin/bash
ffmpeg -f x11grab -video_size 2560x1440 -framerate 25 -i $DISPLAY -f pulse -i default -c:v libx264 -preset superfast -c:a aac screen.mp4
