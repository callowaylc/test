#!/usr/bin/env ruby
# wordbreak solution

def segmentize(string, dictionary)
  return string if dictionary.include?(string)
    
  string.size.times do |i|
    prefix = string[0..i]
    next unless dictionary.include?(prefix)
      
    remaining_segment = segmentize(string[(i+1)..-1], dictionary)
    return [prefix, remaining_segment].join(" ") if remaining_segment
  end
    
  nil
end

def segmentize_with_memoization(string, dictionary)
  segmentize = memoize( -> string {
    return string if dictionary.include?(string)
    string.size.times do |i|
      prefix = string[0..i]
      next unless dictionary.include?(prefix)
      remaining_segment = segmentize.call(string[(i+1)..-1])
      return [prefix, remaining_segment].join(" ") if remaining_segment
    end
    nil
  })
  segmentize.call(string)
end

puts segmentize "filthywhore", [ "filthy", "whore" ]