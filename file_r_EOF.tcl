#!/usr/bin/tclsh
#Purpose: reading file till end of file line by line
#Version: 1.0
#Created Date: Fri Feb 24 23:08:45 IST 2023
#Modified Date:
#Author: Ashok Kumar 
#START #

set fp [open "input.txt" w+]
puts $fp "test\ntest\n When the above code is compiled and executed. \nit reads the file created in previous section and produces the following result"
close $fp
set fp [open "input.txt" r]

#gets $fp data
#puts $data

while { [gets $fp data] >= 0 } {
   puts $data
}
close $fp

# END #
