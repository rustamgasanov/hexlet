# Check the balance of the brackets in the expression. Brackets can be round: "()", square: "[]", curly "{}" and angle: "<>".
#
# Example: false == solution("( {) } ")

def solution(s)
  map  = { '(' => ')', '[' => ']', '{' => '}', '<' => '>' }
  s = s.gsub(/[^()\[\]{}<>]/, '').split('')
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

p solution("( {) } ")
p solution(") } ")
p solution("( { ")
