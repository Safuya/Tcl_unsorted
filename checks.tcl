#!/usr/bin/tclsh

set nodes [lindex $argv 0]

set nodes [open $nodes "r"]
while 1 {
    set node [gets $nodes line]
    if [eof $nodes] break
    puts "The current node is $node"
}
