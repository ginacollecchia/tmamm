#!/usr/bin/osascript

set starttime to current date

set searchartist to "Yusef Lateef"

tell application "iTunes"
	set pl to library playlist 1
	set thematches to search pl for searchartist only artists
	repeat with i from 1 to (count thematches)
		set rating of item i of thematches to 100
	end repeat
end tell