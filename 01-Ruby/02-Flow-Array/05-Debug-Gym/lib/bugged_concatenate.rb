def bugged_concatenate(array)
  concatenated_string = ""
  array.each do |element|
    concatenated_string = concatenated_string + element.to_s
  end
  return concatenated_string.upcase
end

def build_1984_title
  title = [1, "9", 84, " ", "George Orwell"]
  bugged_concatenate(title)
end
