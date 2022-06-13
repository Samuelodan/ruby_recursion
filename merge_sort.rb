# frozen_string_literal: true

require 'debug'

def merge_sort(arr)
  return arr if arr.length <= 1

  left = arr.shift((arr.length / 2))
  right = arr
  left = merge_sort(left)
  right = merge_sort(right)
  merge(left, right)
end

# this method will only be called by the #merge_sort
def merge(left, right)
  new_arr = []
  until left.empty? || right.empty?
    if left.first > right.first
      new_arr << right.shift
    else
      new_arr << left.shift
    end
  end
  new_arr << left.shift until left.empty?
  new_arr << right.shift until right.empty?

  new_arr
end
