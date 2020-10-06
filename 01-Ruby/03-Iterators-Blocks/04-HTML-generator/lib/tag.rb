def tag(tag_name, attributes = nil)
  text = yield
  if !attributes.nil?
    return "<#{tag_name} #{attributes[0]}=\"#{attributes[1]}\">#{text}</#{tag_name}>"
    # TODO: Build HTML tags around content given in the block
  else
    return "<#{tag_name}#{attributes}>#{text}</#{tag_name}>"
  end
  # The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
end

# tag("a", [ "href", "www.google.com"]) { "google it" }
