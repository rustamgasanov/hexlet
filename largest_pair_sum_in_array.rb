# Given an array of integers, find the largest pair sum in it. For example, the largest pair sum in [12, 34, 10, 6, 40] is 74.
#
# Example: 11 == solution([1,2,3,4,5,6])

def solution(arr)
  return 0 if arr == []
  return arr[0] if arr.size == 1
  arr.combination(2).max_by { |pair| pair[0] + pair[1] }.reduce(:+)
end
