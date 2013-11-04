#!/usr/bin/env ruby
# encoding: UTF-8

ARGF.each do |line|

   # remove any newline
   line = line.chomp.to_s

   # grab our key as the two-character prefix (lower-cased)
   csv = line.split(",")

   key= csv[2]

   # value is a count of 1 occurence
   value = csv[4]

   # output to STDOUT
   # <key><tab><value><newline>
   puts key + "\t" + value.to_s
end
