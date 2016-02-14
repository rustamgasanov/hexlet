# A string is said to be complete if it contains all the characters from a to z. Given a string, check if it's complete or not.
#
# Example: false == solution("wyyga")

def solution(w)
  w.chars.sort.uniq == ('a'..'z').to_a
end
