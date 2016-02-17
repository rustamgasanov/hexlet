# Check if 3 given integers form a Pythagorian Triplet. Pythagorian Triplet is a triplet of numbers, such that x^2 + y^2 = z^2
#
# Example: true == solution([12,5,13])

def solution(arr)
  arr.sort!
  arr[0]**2 + arr[1]**2 == arr[2]**2
end
