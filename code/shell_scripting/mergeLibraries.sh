#!/usr/bin/osascript

set start_time to current date

set my_file to choose file with prompt "Choose a tab-delimited text file" of type {"TEXT"}
open for access my_file
set old_tracks to read my_file using delimter return
close access my_file


set text item delimiters to tab
repeat with i from 1 to count of old_tracks
	-- set tab delimiter
	set the_line to text items of item i of old_tracks
	echo "${the_line[1]}"
end repeat
	
-- tell application "iTunes"
-- 	set pl to library playlist 1
-- 	set thematches to search pl for searchartist only artists
-- 	repeat with i from 1 to (count thematches)
-- 		set rating of item i of thematches to 100
-- 	end repeat
-- end tell