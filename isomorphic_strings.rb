# Given two strings, determine if they are isomorphic. Two strings are isomorphic if the characters in s can be replaced to get t. All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.
#
# Example: true == solution("egg", "add")

def solution(a, b)
  return false if a.size != b.size
  map = {}
  (0...a.size).each do |i|
    if map[a[i]].nil?
      map[a[i]] = b[i]
    elsif map[a[i]] != b[i]
      return false
    end
  end
  map.values.uniq.size == map.keys.uniq.size
end
