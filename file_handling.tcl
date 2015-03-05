#!/usr/bin/tclsh

set fin [open "ls.txt" r]
set fout [open "output.txt" w]

for {set i 0} {$i < 10} {incr i} {
    gets $fin line
    puts -nonewline $fout "line $i:"
    puts $fout "$line"
}

close $fin
close $fout

