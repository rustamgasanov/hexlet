# Concatenate 2 strings by characters, one by one. In other words, take the 1st char from the first string, then 1st char from the second string, then 2nd char from the first string, then 2nd char from the second string, and so on. If one string ends before the other, just continue with the remaining characters.
#
# Example: "awbxcydz" == solution("abcd", "wxyz")

def solution(s1, s2)
  res = s1.split('').zip(s2.split('')).flatten.join
  s2.length > s1.length ? res + s2[-(s2.length - s1.length)..-1] : res
end

solution("abcd", "wxyz")
