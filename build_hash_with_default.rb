# Return a new hash map with elements of the given array as keys, and the given default value as values for those keys.
#
# Example: {"draft":0,"completed":0} == solution(["draft","completed"], 0)

def solution(arr, val)
  arr.each_with_object({}) { |i, o| o[i] = val }
end
