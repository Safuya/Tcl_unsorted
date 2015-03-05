#!/usr/bin/tclsh

set list1 {a b c d}
set list2 {e f g h}
set list3 {i j k l}

set big_list [concat $list1 $list2 $list3]
puts "concat yields $big_list"

set joined_list [join $list1 "."]
puts "join yields $joined_list"

lappend append_list "this" "is" "appended"
puts "apend yields $append_list"

puts "The third letter is [lindex $list1 2]"

set insert_list [linsert $list1 2 "this" "does" "not" "belong"]
puts "insert yields $insert_list"

set list_list [list "this" "is" "now" "a" "list"]
puts "list yields $list_list"

puts "lindex yields [lindex $list_list 2]"

set replace_list [lreplace $list1 1 2 $list3]
puts "replace yields $replace_list"

set sort_list [lsort -decreasing $list1]
puts "sort yields $sort_list"

set hex_digits "44:55:88:9a:00:1c"
set split_list [split $hex_digits ":"]
puts "split yields $split_list"

set search_list [lsearch $list1 "a"]
puts "search yields $search_list"
set search_list_null [lsearch $list1 "z"]
puts "search null yields $search_list_null"

