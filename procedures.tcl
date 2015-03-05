#!/usr/bin/tclsh

proc contains { search_in search_for } {
    set result [string match "*$search_for*" $search_in]
    if { [string length $search_for ] > [string length $search_in] } {
        return "Needle larger than haystack. Check match order."
    }
    if {$result == 1} {
        return "Match Succeeded"
    }
    
    set search_in [string tolower $search_in]
    set search_for [string tolower $search_for]
    set result [string match "*$search_for*" $search_in]
    if {$result == 0} {
        return "Match Failed"
    } else {
        return "Match only when disregarding case"
    }
}

set string1 "main.c"
set string2 ".c"
set string3 ".C"
set string4 "flibble"
puts "string1 is $string1. string2 is $string2. string3 is $string3. string4 is $string4."

set does_it_match [contains $string1 $string2]
puts "string 1 and 2 evaluate to $does_it_match"

set does_it_match [contains $string2 $string1]
puts "string 2 and 1 evaluate to $does_it_match"

set does_it_match [contains $string1 $string3]
puts "string 1 and 3 evaluate to $does_it_match"

set does_it_match [contains $string4 $string1]
puts "string 4 and 1 evaluate to $does_it_match"

