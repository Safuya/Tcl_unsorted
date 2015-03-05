#!/usr/bin/tclsh

set i 0
while {$i < 5} {
    puts "curly $i"
    incr i
}

set i 0
# Treats it as a string, so evaluates as true.
#while "$i<5" {
#    puts "quote $i"
#    incr i
#}
