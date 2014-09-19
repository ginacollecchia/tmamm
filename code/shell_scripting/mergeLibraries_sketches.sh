#!/usr/bin/osascript

-- python's output contains all tracks with ratings: look up track by song-artist-album key

showHelp() {

}

if [ $# = 0 ]; then 
	showHelp();
fi

set starttime to current date

-- set tracks_to_be_rated to merged_playlist_output
-- repeat with track in tracks_to_be_rated
-- 		tell application "iTunes" to set rating of track to 

-- collect the current library
tell application "iTunes"
	set pl to library playlist 1
	repeat with searchsong in old_track_names_to_merge
		
	set track_names to {}
	copy name of tracks of library playlist 1 to track_names
	set album_names to {}
	copy album of tracks of library playlist 1 to album_names
	set artist_names to {}
	copy artist of tracks of library playlist 1 to artist_names
end tell

# now run another python s
tell application "iTunes"
	repeat with a_track in tracks of library playlist 1
		-- look up the track in my database
		-- one way i can think of to do this is to look up all tracks with a given name and check
		-- artist/album
		if [ name of a_track is in old_track_names_to_merge & artist of a_track  old_track_artists_to_merge & album of a_track = ]; then
			set rating of a_track to the_rating;
		fi
	end repeat
end tell