#!/usr/bin/tclsh

set num $argc
set script_name $argv0

puts "You supplied $argc arguments into $argv."

set first_arg [lindex $argv 0]
set second_arg [lindex $argv 1]
puts "$first_arg is first_arg. $second_arg is second_arg."

set i 0
foreach arg {$argv} {
    puts "arg is $arg"
    puts "argv is $argv"
    set current_arg [lindex $argv $i]
    puts "current arg is $current_arg"
    set i i+1
}

