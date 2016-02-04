# Return the number of trailing zeroes in n! For example, 5! = 120, the number of trailing zeros is 1; 10! = 3 628 800, the number of trailing zeros is 2.
#
# Example: 6 == solution(28)

def solution(n)
  res = 0
  chars = (1..n).reduce(:*).to_s.chars
  chars.reverse.each do |c|
    c == "0" ? res += 1 : break
  end
  res
end
