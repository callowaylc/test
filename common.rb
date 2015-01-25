#!/usr/bin/env ruby

def time
  start = Time.now
  yield 

  puts ( Time.now - start ).to_f
end
