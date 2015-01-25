#!/usr/bin/env ruby

def reverse_string( string )  
  ( 0 .. (string.length / 2) - 1).each do | index |
    string[index], string[-index - 1] = string[-index-1], string[index] 
  end

  string
end

puts reverse_string( ARGV[0].dup )