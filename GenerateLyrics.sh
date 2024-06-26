#!/bin/bash

# Get the artist's name from the current directory
ARTIST_NAME=$(basename "$PWD")

# Loop through each album directory
for album in */; do
    # Navigate to the album directory
    cd "$album"
    
    # Loop through each song file
    for song in *.m4a; do
        # Extract the song name without the file extension and ignore the first two characters
        song_name="${song%.*}"
        trimmed_song_name="${song_name:2}"
        
        # Fetch the synced lyrics using the trimmed song name and artist name
        syncedlyrics "$trimmed_song_name $ARTIST_NAME"  -o "${song_name}.lrc"
         #syncedlyrics "$trimmed_song_name $ARTIST_NAME" -p "Musixmatch" -o "${song_name}.lrc"

    done
    
    # Navigate back to the artist directory
    cd ..
done


## providers
#Musixmatch
##Deezer
###Lrclib
#NetEase
#Genius (For plain format)
