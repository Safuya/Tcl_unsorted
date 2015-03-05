#!/usr/bin/tclsh

foreach filename [glob *.txt] {
    set file [open $filename r]
    foreach line [split [read $file] "\n"] {
        puts $line
    }
}

