#!/usr/bin/env ruby

require './common'

def fibonacci(n)
  n.times.each_with_object([0,1]) { |num, obj| obj << obj[-1] + obj[-2] }
end

def fibonacci_recursion( n )
  return n if n <= 1 
  store[n] ||= fibonacci( n - 1 ) + fibonacci( n - 2 )
end

def store
  @store ||= { }
  @store
end

time do 
  p fibonacci 5
  p fibonacci 200
end