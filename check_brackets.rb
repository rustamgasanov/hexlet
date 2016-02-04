# Check the balance of the brackets in the expression. Brackets can be round: "()", square: "[]", curly "{}" and angle: "<>".
#
# Example: false == solution("( {) } ")

def solution(arr)
  arr = arr.gsub(' ', '').split('')
  return false if arr.size % 2 != 0

  map  = { '(' => ')', '[' => ']', '{' => '}', '<' => '>' }

  loop do
    break false if map[arr.shift] != arr.pop
    break true if arr.size == 0
  end
end
