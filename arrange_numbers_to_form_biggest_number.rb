# Construct the largest possible number by arranging the integers from the given array. Since the resulting number can be very large and out of int range, you have to represent it as string. For example, from [3, 24, 4] we can construct 6 different numbers: 3244, 3424, 2434, 2443, 4324, 4243 and the largest of them is 4324.
#
# Example: "998764543431" == solution([1,34,3,98,9,76,45,4])

def solution(arr)
  arr.permutation.max_by { |i| i.join.to_i }.join
end
