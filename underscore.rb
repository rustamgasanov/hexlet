# Given a string with words separated in different ways, return an underscored, lowercase form.
#
# Example: "active_model/errors" == solution("ActiveModel::Errors")

def solution(x)
  words = x.split("::")
  res = []
  words.each do |word|
    t_res = ""
    word.chars.each do |c|
      t_res += ("A".."Z").include?(c) ? "_#{c.downcase}" : c
    end
    res << t_res[1..-1]
  end
  res.join("/")
end
