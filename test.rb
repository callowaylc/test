#!/usr/bin/env ruby

def get_products_of_all_ints_except_at_index( array )

  result  = Array.new array.count, 1
  product = 1

  array.count.times do | index |
    result[index]  = product
    product       *= array[index]
  end


  product = 1

  ( array.count - 1 ).downto 0 do | index |
    result[index] *= product
    product       *= result[index]

    puts product
  end

  result
end

# puts get_products_of_all_ints_except_at_index [1, 7, 3, 4]

def best_profit( array )

  max = 0
  min = nil
  
  array.each do | current |
    min = current       if min.nil? || current < min
    max = current - min if ( current - min > max)

    puts "min is #{ min }"
  end

  max
end

#puts best_profit [ 3, 2, 500, 1, 600, 13, 1 ]

def highest_product( array )

end

def first_non_repeated_character( string )
  dict = { }

  string.chars.each do | character |
    dict[character] ||= 0
    dict[character] += 1
  end

  dict.each do | key, value |
    return key if value == 1
  end
end

# puts first_non_repeated_character "aabbfddaceg"

def are_they_an_anagram( first, second )

end