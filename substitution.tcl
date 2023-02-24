#!/usr/bin/tclsh
#Purpose: Different substitutions
#Version: 1.0
#Created Date: Fri Feb 24 22:49:44 IST 2023
#Modified Date:
#Author: Ashok Kumar 
#START #

puts "Command substitution"
puts [expr 1*3]
puts "variable substitution"
set a 10
puts "puts a : It will print string “a” but not the value of ‘a’ to the console"
puts a
puts "puts $ a : It will print the value of ‘a’ to the console"
puts $a

puts "Backslash substitution"
puts "This  is my  \"car\" "



# END #
