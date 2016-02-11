# Check if the parentheses in the expression are all balanced, so that all open parentheses are closed properly.
#
# Example: false == solution("( ) )")

def solution(s)
  map = { '(' => ')' }
  s = s.gsub(/[^()]/, '').split('')
  return false if s.size % 2 != 0
  arr = []
  (0...s.size).each do |i|
    if !arr.last.nil? && arr.last == s[i]
      arr.pop
    else
      arr.push(map[s[i]])
    end
  end
  arr.empty?
end
