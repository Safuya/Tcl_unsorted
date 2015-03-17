#!/usr/bin/tclsh

# Read character from stdin and put to stdout until it encounters the q
# character.
set c [read stdin 1]
set my_file [open output_stream.txt w]

while {$c != "q"} {
	puts -nonewline $my_file "$c"
	set c [read stdin 1]
}

close $my_file

