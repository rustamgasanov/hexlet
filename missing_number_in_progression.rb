# Given an array that represents elements of an arithmetic progression in order. One element is missing in the progression. Return the missing number.
#
# Example: 6 == solution([2,4,8,10,12,14])

def solution(arr)
  map = {}
  (0..arr.size - 2).each { |i| map[i] = arr[i] - arr[i + 1] }
  max = map.max_by { |_,v| v.abs }
  arr[max[0]] - max[1] / 2
end

