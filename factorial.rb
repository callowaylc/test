#!/usr/bin/env ruby

def factorial_recursive( value )
  ( 1 .. value ).inject( :* ) || 1
end

def factorial(n)
  @store    ||= { }
  @store[n] ||= begin
    if n == 0
      1
    else
      n * factorial( n - 1 )
    end
  end
end