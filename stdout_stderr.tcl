#!/usr/bin/tclsh

puts -nonewline stderr "Who are you? "
flush stderr
set yername [gets stdin]

puts "Hello $yername and welcome"
puts stderr "Job completed"

