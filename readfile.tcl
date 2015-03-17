#!/usr/bin/tclsh

# [set] up a stream called [fp] and [open] the file [languages] for [r]eading
set fp [open languages r]
# [set] up variable called [data] and [read] the contents of [fp] into it
set data [read $fp]

# [put] to [s]creen with no new line variable [data]
puts -nonewline $data

# [close] stream [fp]
close $fp

