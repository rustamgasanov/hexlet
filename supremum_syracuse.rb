# Find the largest element in the Syracuse sequence.
#
# Example: 16 == solution(6)

def solution(n)
  arr = [n]
  curr = n
  while curr != 1
    curr = (curr.even?) ? (curr / 2) : (3 * curr + 1)
    arr << curr
  end
  arr.max
end
