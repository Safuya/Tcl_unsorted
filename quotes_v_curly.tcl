#!/usr/bin/tclsh
# Curly's do literal, quotes will run commands

set var1 "quotedString"
set var2 {curlyBraceString}

puts "var1 is a quoted string: $var1"
puts "var2 is a curly brace string: $var2"

set string1 "arbitrary string"

set var1 "[string length $string1]"
set var2 {[string length $string1]}

puts "var1 is a quoted string: $var1"
puts "var2 is a curly brace string: $var2"

puts {var1 is a quoted string in a curly brace statement: $var1}
puts "The length of the string is [string length $string1]"
puts {The length of the string is [string length $string1]}
