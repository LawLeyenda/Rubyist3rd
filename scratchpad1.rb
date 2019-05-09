def combine_names(first_name, last_name)
  first_name + " " + last_name
end

names = ["Sean", "Gelb"]
puts names

puts combine_names(*names)

string1 = "My name is Sean John."
puts string1["Sean John"]