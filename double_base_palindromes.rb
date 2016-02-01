# The decimal number 585 is 1001001001 in binary. It is palindromic in both bases. Find n-th palindromic number.
# Example: 5 == solution(3)

def palindrome?(x)
  x.to_s == x.to_s.reverse && x.to_s(2) == x.to_s(2).reverse
end

def solution(n)
  res = 0
  loop.with_index(1) do |_, i|
    res += 1 if palindrome?(i)
    return i if res == n
  end
end
