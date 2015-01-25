#!/usr/bin/env ruby
# returns boolean based on percentages

def bool( percentage )
  rand( 100 ) < percentage
end

def determine( start, finish, current )

  range       = finish  - start
  difference  = current - start
  percentage  = ( difference / range.to_f ) * 100

  bool percentage
end

arguments = ARGV.map( &:to_f )
puts determine *arguments
