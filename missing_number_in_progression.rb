# Given an array that represents elements of an arithmetic progression in order. One element is missing in the progression. Return the missing number.
#
# Example: 6 == solution([2,4,8,10,12,14])

def solution(arr)
  map = {}
  (0..arr.size - 2).each_with_index { |el, i| map[i] = (arr[i] - arr[i + 1]).abs }
  max = map.max_by { |_,v| v }
  (arr[0] < arr[1]) ? (arr[max[0]] + max[1] / 2) : (arr[max[0]] - max[1] / 2)
end

