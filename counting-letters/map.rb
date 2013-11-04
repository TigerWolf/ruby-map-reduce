#!/usr/bin/env ruby
# encoding: UTF-8

ARGF.each do |line|

   # remove any newline
   line = line.chomp

   # grab our key as the two-character prefix (lower-cased)
   key = line[0,1].downcase

   # value is a count of 1 occurence
   value = 1

   # output to STDOUT
   # <key><tab><value><newline>
   puts key + "\t" + value.to_s
end
