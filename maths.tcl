#!/usr/bin/tclsh

set sum 2
set sum [expr $sum + 2]
puts "sum is $sum"

set num [expr 2+2]
puts "num is $num"

set mult "4*4"
puts "$mult"
puts "[expr $mult]"; # Have to use ; for comment at end of line.
puts {[expr $mult]}

