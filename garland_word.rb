# Write function that, given a lowercase word, returns the degree of the word if it's a garland word and 0 otherwise. A garland word is one that starts and ends with the same N letters in the same order, for some N greater than 0, but less that the length of the word.
#
# Example: 2 == solution("onion")

def solution(word)
  1.upto(word.size - 1).map do |i|
    word[0..i - 1] == word[-i..-1] ? i : 0
  end.max
end
