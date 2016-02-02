# Validate given ISBN identifier. An ISBN is a ten digit code which identifies a book. The first nine digits represent the book and the last digit is used to make sure the ISBN is correct To verify an ISBN you obtain the sum of 10 times the first digit, 9 times the second digit, 8 times the third digit ... all the way till you add 1 times the last.digit. if the sum leaves no remainder when divided by 11 the code is valid ISBN.
#
# Example: true == solution("0-684-84328-5")

def solution(x)
  res = 0
  x.gsub!("-", "")
  10.downto(1) { |mult| res += x[10 - mult].to_i * mult }
  res % 11 == 0
end
