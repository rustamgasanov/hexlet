# Given an array of integers, find the first repeating element in it. Find the element that occurs more than once and whose index of first occurrence is smallest.
#
# Example: 5 == solution([10,5,3,4,3,5,6])

def solution(arr)
  counts = arr.each_with_object(Hash.new(0)) { |i, o| o[i] += 1 }
  counts.select! { |_,v| v > 1 }
  counts.first.nil? ? nil : counts.first[0]
end
