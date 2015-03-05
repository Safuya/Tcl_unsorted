#!/usr/bin/tclsh

proc domain {} {
    puts -nonewline "Select a domain: "
    flush stdout

    gets stdin input
    switch $input {
        us { puts "United States" }
        uk { puts "United Kingdom" }
        se { puts "Sweden" }
    }
}

domain
