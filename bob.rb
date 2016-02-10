# Bob answers 'Sure.' if you ask him a question. He answers 'Whoa, chill out!' if you yell at him. He says 'Fine. Be that way!' if you address him without actually saying anything. He answers 'Whatever.' to anything else.
#
# Example: 'Whoa, chill out!' == solution('1, 2, 3 GO!')

def solution(x)
  if x.gsub(' ', '') == ''
    'Fine. Be that way!'
  elsif /[A-Z]/ =~ x
    'Whoa, chill out!'
  elsif x[-1] == '?'
    'Sure.'
  else
    'Whatever.'
  end
end
