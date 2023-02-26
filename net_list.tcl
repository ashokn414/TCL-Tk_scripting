#!/usr/bin/tclsh
#Purpose: TCL script for finding list of wires/nets in Verilog Netlist
#Version: 1.0
#Created Date: Sat Feb 25 20:26:03 IST 2023
#Modified Date:
#Author: Ashok Kumar 
#START #

proc nets_list {in} {
	set fp [open $in r]
	set nets {}
	while {[gets $fp line] >= 0} {
		if {[regexp -all "input*" $line m]} {
			set x [regexp -all {[^input]+\w+[^:;]+} $line match2 ];
			#puts $match2
			set nets [append nets "$match2" ","]	
 		} elseif {[regexp -all "output*" $line n]} {
			set y [regexp -all {[^output]+\w+[^:;]+} $line match3 ];
			#puts $match3;
			set nets [append nets "match3" ","]
		} elseif {[regexp -all "wire*" $line o]} {
			set z [regexp -all {[^wire]+\w+[^:;]+} $line match1 ]
			#puts $match1;
			set nets [append nets "$match1" ","]
		} else {}
	}
	puts "List of Nets: $nets"
	puts "Total No. of Nets: [llength $nets]"
	close $fp
}

nets_list "mux.v"

# END #
