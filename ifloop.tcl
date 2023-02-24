#!/usr/bin/tclsh
#Purpose: if loop example
#Version: 1.0
#Created Date: Fri Feb 24 22:59:22 IST 2023
#Modified Date:
#Author: Ashok Kumar 
#START #

set a 10
set b 20

if {$a == 10} {
# if expression_1 is true then it will go to expression_2
if {$b == 20} {
#if expression_2 is true then it will print the below string
puts "value of a is 10 and b is 20"
}
}


# END #
