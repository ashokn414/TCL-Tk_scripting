#!/usr/bin/tclsh
#Purpose:  TCL script to find the list of gates and cells
#Version:  1.0
#Created Date: Sat Feb 25 19:56:34 IST 2023
#Modified Date:
#Author: Ashok Kumar 
#START #

proc gates_list {in} {
	set fp [open $in r]
	set g {}
	while {[gets $fp line] >= 0} {
		if {[regexp -all "and+" $line m] | [regexp -all "or+" $line m] | [regexp -all "nor+" $line m] | [regexp -all "not+" $line m] } {
			set k [lindex $line 1]
			puts $k
			set g [append g "$k" " "]
		} elseif {[regexp -all "endmodule*" $line n]} {
			break
		} else {}
	}
	puts "List of Gates: $g"
	puts "Total No. of Gates: [llength $g]"
	close $fp
}
gates_list "mux.v"


# END #
