# Given a sequence of integers from 1 to N in a random order. One of the numbers is missing (the others are found exactly once). N is not known beforehand. Determine the missing number.
#
# Example: 1 == solution([2,3,4,5])

def solution(arr)
  return 1 if arr.size == 0
  arr.sort!
  ((1..arr.last).to_a - arr).first || arr.last + 1
end
