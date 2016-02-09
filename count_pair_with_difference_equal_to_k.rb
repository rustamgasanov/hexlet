# Given an integer array and a positive integer k, count all distinct pairs with difference equal to k.
#
# Example: 2 == solution([1,5,3,4,2], 3)

def solution(arr, n)
  pairs = []
  (0...arr.size).each do |i|
    (i + 1...arr.size).each do |j|
      pairs << [arr[i], arr[j]] if (arr[i] - arr[j]).abs == n
    end
  end
  pairs.uniq.size
end
