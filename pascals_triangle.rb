# Return the N'th row of Pascal's Triangle.
#
# Example: [1,3,3,1] == solution(3)

def pascals_triangle(n)
  return [1] if n == 0
  return [1, 1] if n == 1
  res = [[1]]
  (2..n).each do |i|
    t_res = []
    prev_row = res == [[1]] ? [1, 1] : res.last
    prev_row.each_cons(2) do |j|
      t_res << j[0] + j[1]
    end
    res << [1] + t_res + [1]
  end
  res.last
end

def solution(n)
  pascals_triangle(n)
end
