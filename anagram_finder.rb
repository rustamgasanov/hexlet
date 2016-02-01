# Find all the anagrams in a vector of words. Your function should return a vector of vectors, where each sub-vector is a group of words which are anagrams of each other. Words without any anagrams should not be included in the result.
#
# Example: [["veer","ever"],["lake","kale"],["item","mite"]] == solution(["veer","lake","item","kale","mite","ever"])

def solution(arr)
  res = []
  (0..arr.size - 1).each do |i1|
    t_res = [arr[i1]]
    (i1 + 1..arr.size - 1).each do |i2|
      next if res.flatten.include?(arr[i1])
      t_res += [arr[i2]] if arr[i1].split('').sort == arr[i2].split('').sort
    end
    res << t_res
  end
  res.select { |i| i.size > 1 }
end
