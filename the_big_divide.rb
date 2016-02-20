# Calculate the sum of all natural numbers smaller than n (first argument) which are divisible by a or/and b (second and third arguments) without remainder.
#
# Example: 23 == solution(10, 3, 5)

def solution(n, b, c)
  (1...n).inject(0) { |sum, i| sum += (i % b == 0 || i % c == 0) ? i : 0 }
end
