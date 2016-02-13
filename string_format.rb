# Given a number as input, return a string "Value is X", where X is the given number with zeros added to the beginning so that there are 5 digits in total.
#
# Example: "Value is 00123" == solution(123)

def solution(n)
  "Value is #{n.to_s.rjust(5, '0')}"
end
