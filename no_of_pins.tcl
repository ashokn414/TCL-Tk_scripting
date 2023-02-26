#!/usr/bin/tclsh
#Purpose: TCL scripting to find the number of I/O pins
#Version: 1.0
#Created Date: Sat Feb 25 20:13:10 IST 2023
#Modified Date:
#Author: Ashok Kumar 
#START #

proc Io_list {in} {
	set fp [open $in r]
	set io {}
	while {[gets $fp line] >= 0} {
		if {[regexp -all "input*" $line m]} {
			set x [regexp -all {[^input]+\w+[^:;]+} $line match2 ];
			#puts $match2
			set io [append io "$match2" ","]
		} elseif {[regexp -all "output*" $line n]} {
			set y [regexp -all {[^output]+\w+[^:;]+} $line match3 ];
			#puts $match3
			set io [append io "$match3" " "]
		} else {}
	}
	puts "List of Nets: $io"
	puts "Total No. of I/Os: [llength $io]"
	close $fp
}
Io_list "mux.v"

# END #
