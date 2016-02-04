# Calculate the sum of digits of 2**n For example, 2**15 = 32768, and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# Example: 13 == solution(8)

def solution(x)
  (2**x).to_s.chars.map(&:to_i).inject(:+)
end
