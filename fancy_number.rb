# Given a number, find whether it is fancy or not. A fancy number is one which when rotated 180 degrees is the same. When rotated, 6 becomes 9, 9 becomes 6, and 8, 1, 0 become themselves (do not change).
#
# Example: true == solution("9081806")

def solution(s)
  s.tr("0189623457", "01869xxxxx") == s.reverse
end
