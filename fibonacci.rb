# Return the N'th item in the Fibonacci sequence. Hint: The first item in the sequence is 0.
#
# Example: 13 == solution(7)

def fib(n)
  return n if n == 0 || n == 1
  fib(n - 1) + fib(n - 2)
end

def solution(n)
  fib(n)
end
