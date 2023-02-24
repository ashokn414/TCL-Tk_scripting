#!/usr/bin/tclsh
#Purpose: Creating a List
#Version: 1.0
#Created Date: Sat Feb 25 00:20:12 IST 2023
#Modified Date:
#Author: Ashok Kumar 
#START #

set colorList1 {red green blue}
set colorList2 [list red green blue]
set colorList3 [split "red/green/blue" /]
puts $colorList1
puts $colorList2
puts $colorList3

# END #
