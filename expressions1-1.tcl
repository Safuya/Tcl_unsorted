#!/usr/bin/tclsh

set a 3
set b [expr $a+1]
puts $b
puts [expr $a+$b+$a*$b]
set a b
