# Given an array and a number, generate an array with values shifted left or right by a given number. The number could be positive or negative; positive number shifts the array forward, negative shifts it backwards.
#
# Example: [4,5,1,2,3] == solution(-2, [1,2,3,4,5])

def solution(n, arr)
  return [arr.first] if arr.size == 1

  if n.abs > arr.size
    n_minified = n.abs % arr.size
    n = (n < 0) ? -n_minified : n_minified
  end

  (n == 0) ? arr : arr[n..-1] + arr[0..n - 1]
end
