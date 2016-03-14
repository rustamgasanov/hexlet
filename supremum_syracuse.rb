# Find the largest element in the Syracuse sequence.
#
# Example: 16 == solution(6)

def solution(n)
  max, curr = n, n
  while curr != 1
    curr = (curr.even?) ? (curr / 2) : (3 * curr + 1)
    max = curr if max < curr
  end
  max
end
