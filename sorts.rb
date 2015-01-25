#!/usr/bin/env ruby

def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end

  list
end

def quicksort(array)
  return array if array.length <= 1

  pivot_index = (array.length / 2).to_i
  pivot_value = array[pivot_index]
  array.delete_at(pivot_index)

  lesser = Array.new
  greater = Array.new

  array.each do |x|
    if x <= pivot_value
      lesser << x
    else
      greater << x
    end
  end

  return quicksort(lesser) + [pivot_value] + quicksort(greater)
end


def merge_sort
  return self if self.length <= 1

  middle = (self.length / 2).to_i
  left = self[0..middle-1].merge_sort
  right = self[middle..self.length-1].merge_sort

  return merge(left, right)
end
  
def merge(left, right)
  result = Array.new

  while left.length > 0 || right.length > 0
    if left.length > 0 && right.length > 0
      if left[0] <= right[0]
        result << left.slice!(0)
      else
        result << right.slice!(0)
      end
    elsif left.length > 0
      result.concat left.slice!(0..left.length-1)
    elsif right.length > 0
      result.concat right.slice!(0..right.length-1)
    end
  end

  return result
end



# Search a sorted array in O(lg(n)) time
def binary_search(array, value, from=0, to=nil)
    if to == nil
        to = array.count - 1
    end
 
    mid = (from + to) / 2
 
    if value < array[mid]
        return binary_search array, value, from, mid - 1
    elsif value > array[mid]
        return binary_search array, value, mid + 1, to
    else
        return mid
    end
end