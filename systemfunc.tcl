#!/usr/bin/tclsh
#Purpose: System Functions
#Version: 1.0
#Created Date: Sat Feb 25 00:00:09 IST 2023
#Modified Date:
#Author: Ashok Kumar 
#START #
#clock − seconds function, which returns current time in seconds.

#clock − format function, which formats the seconds into date and time.

#clock − scan function, which scans the input string and converts it into seconds.

#open − function, which is used to open a file.

#exec − function, which is used to execute a system command.

#close − function, which is used to close a file.

#get seconds
set currentTime [clock seconds]
puts $currentTime
#get format
puts "The time is: [clock format $currentTime -format %H:%M:%S]"
puts "The date is: [clock format $currentTime -format %D]"

set date "Jun 15, 2014"
puts [clock scan $date -format {%b %d, %Y}]

puts [exec ls]
puts [exec dir]

set a  [open input.txt r]
#two ways to read out the contents of a file. commented version will output the file name of a along with the content.
#puts [read $a];
#puts $a
set b [read $a]
puts $b
close $a












# END #
