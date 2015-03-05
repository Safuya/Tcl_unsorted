#!/usr/bin/tclsh

array set users [list {1} {john} {2} {mary} {3} {sue}]

puts "$users(1)"
puts "$users(3)"

puts "There are [array size users] users in the array"
array unset users

# puts "$users(1)"

array set users [list {1} {john} {2} {mary} {3} {sue}]

foreach index [array names users] {
    puts "User number $index is $users($index)"
}

