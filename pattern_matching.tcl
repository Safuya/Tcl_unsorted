#!/usr/bin/tclsh

set address [lindex $argv 0]
# if address starts with two letters and some more stuff it's a dns
set dns [regexp {[a-z][a-z]+} "$address"]

# if it's a dns, add the domain
if ($dns) {
   set address "$address.21cn-infra.bt.com"
}

# the proof is in the puts
puts $address
