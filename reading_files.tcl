#!/usr/bin/tclsh

set file [open ip_addresses.txt r]
foreach line [split [read $file] "\n"] {
    puts $line
}

