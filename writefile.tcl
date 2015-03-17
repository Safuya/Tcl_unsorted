#!/usr/bin/tclsh

set languages { "Python" "Tcl" "Visual Basic" "Perl" "Java" "C" "C#" "Ruby" "Scheme" }
set languages_file [open languages w]

foreach language $languages {
	puts $languages_file $language
}

close $languages_file

