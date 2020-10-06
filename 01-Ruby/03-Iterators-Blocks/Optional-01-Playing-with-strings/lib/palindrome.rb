def palindrome?(a_string)
  if a_string == ""
    false
  else
    a_string.downcase.gsub(/\W/, '') == a_string.downcase.gsub(/\W/, '').reverse
  end
  # TODO: check if a_string is a palindrome
end
