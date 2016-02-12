# Given a string, which contains only decimal digits (0-9). Each digit is made of a certain number of dashes, as on LCD-display of a calculator. For instance 1 is made of 2 dashes, 8 is made of 7 dashes and so on. Return the total number of dashes in the input string.
#
# Example: 18 == solution("12134")

def solution(x)
  map = { "1" => 2, "2" => 5, "3" => 5, "4" => 4, "5" => 5, "6" => 6, "7" => 3, "8" => 7, "9" => 6, "0" => 6 }
  x.chars.map { |c| map[c] }.reduce(:+)
end
