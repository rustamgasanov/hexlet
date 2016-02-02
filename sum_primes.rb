# Return the sum of all prime numbers from 2 up to a given number.
#
# Example: 4227 == solution(200)

def prime?(x)
  return false if x < 2
  (2..Math.sqrt(x)).each { |i| return false if x % i == 0 }
  true
end

def solution(x)
  (2...x).map { |i| i if prime?(i) }.compact.reduce(:+)
end
