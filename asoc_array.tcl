#!/usr/bin/tclsh

array set year [list {jan} {31} {feb} {28} {mar} {31} \
                    {apr} {30}]

set days [expr $year(jan)]
puts "jan has $days days"

