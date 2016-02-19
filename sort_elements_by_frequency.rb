# Given an array of integers, sort the array according to frequency of elements. Most frequent numbers come first. If several groups of the same size exist, they should appear in the order of corresponding numbers in the input array.
#
# Example: [3,3,3,3,2,2,2,12,12,4,5] == solution([2,3,2,4,5,12,2,3,3,3,12])

def solution(arr)
  arr.uniq.sort_by { |i| -arr.count { |j| i == j } }.map { |i| [i] * arr.count(i) }.flatten
end
