#!/usr/bin/tclsh
#Purpose: File read and write
#Version: 1.0
#Created Date: Fri Feb 24 23:02:38 IST 2023
#Modified Date:
#Author: Ashok Kumar 
#START #


# r - Opens an existing text file for reading purpose and the file must exist. This is the default mode used when no accessMode is specified.
# w - Opens a text file for writing, if it does not exist, then a new file is created else existing file is truncated.
# a - Opens a text file for writing in appending mode and file must exist. Here, your program will start appending content in the existing file content.
# r+  - Opens a text file for reading and writing both. File must exist already.
# w+ - Opens a text file for reading and writing both. It first truncate the file to zero length if it exists otherwise create the file if it does not exist.
# a+ - Opens a text file for reading and writing both. It creates the file if it does not exist. The reading will start from the beginning, but writing can only be appended.

set fp [open "input.txt" w+]
puts $fp "testing the file operations"
close $fp
set fp [open "input.txt" r]
set file_data [read $fp]
puts $file_data
close $fp

# END #
