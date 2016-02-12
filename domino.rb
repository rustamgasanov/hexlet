# The input contains the maximum number of dots on one end of a domino bone. Output the number of dots on the domino set. Sample 2 -> 12
#
# Example: 12 == solution(2)

def solution(x)
  dominos = []
  x.downto(0).each do |i|
    x.downto(0).each do |j|
      dominos << [i, j].sort
    end
  end
  dominos.uniq.flatten.reduce(:+)
end
