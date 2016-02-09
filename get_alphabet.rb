# Return an alphabet of a given string; the given string is represented as an array of characters. An alphabet of a strin is the set of all distinct characters used in that string.
#
# Example: "adfs" == solution("asfsfdss")

def solution(x)
  x.sort.uniq
end
