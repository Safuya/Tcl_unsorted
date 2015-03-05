#!/usr/bin/tclsh

set string1 "abcdefg"
set string2 "abcefg"

puts [string match "cde" $string1]
puts [string match "*cde*" $string1]
puts [string match "*.c" "main.c"]

puts [string length $string1]
puts [string length $string2]
puts [string length "foo"]

puts [string index $string1 4]
puts [string index $string2 4]

