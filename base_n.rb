# Check whether the number can be a n-nary number (in other words, whether the number is in base-n for n < 10).
#
# Example: false == solution(6161, 3)

def solution(num, s)
  num.to_s.chars.all? { |c| c.to_i < s }
end
