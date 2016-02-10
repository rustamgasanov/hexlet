# Credit card numbers can be validated with a process called the Luhn algorithm. Simply stated, the Luhn algorithm works like this:
#
#              1. If the length of the card number is even, pick all the digits with an even index.
#              If the length of the card number is odd, pick all the digits with an odd index.
#              2. Transform each digit like so: if 2*x > 9, then replace x with 2*x - 9;
#              othwerise, replace x with 2*x
#              3. Add up all the numbers.
#              4. If the result is divisable by 10 (withour remainder) then the card number was valid.
#
# Example: true == solution("4408041234567893")

def solution(cc)
  op = cc.length.even? ? :even? : :odd?
  (0...cc.size).map do |i|
    x = cc[i].to_i
    if i.send(op)
      (2 * x > 9) ? (2 * x - 9) : (2 * x)
    else
      x
    end
  end.reduce(:+) % 10 == 0
end

solution("4408041234567893")
