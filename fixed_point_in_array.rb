# Given an array of n distinct integers sorted in ascending order, return a Fixed Point in the array, if there is a Fixed Point present in array; else return -1. Fixed Point in an array is an index i such that arr[i] is equal to i.
#
# Example: 3 == solution([-10,-5,0,3,7])

def solution(arr)
  (0..arr.size - 1).detect { |i| arr[i] == i } || -1
end
