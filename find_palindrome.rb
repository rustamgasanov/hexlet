# A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string.
#
# Example: "yzzy" == solution("xyzzy")

def palindrome?(word)
  word == word.reverse
end

def solution(word)
  res = ""
  (0...word.size).each do |i|
    (0...word.size).each do |j|
      res = word[i..j] if palindrome?(word[i..j]) && res.size < word[i..j].size
    end
  end
  res
end
