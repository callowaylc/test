#!/usr/bin/env ruby

def fizzbuzz( n )
  ( 1 .. n ).each do | integer |
    puts "#{ integer }: #{ ['fizz'][integer % 3] }#{ ['buzz'][integer % 5] }"
  end
end

fizzbuzz ARGV[0].to_i