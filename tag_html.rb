def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  if attributes.empty?
    print "<#{tag_name}>"
    print yield attributes
    print "</#{tag_name}>"
  else
    attr_name = attributes.first
    attr_value = attributes.last

    print "<#{tag_name} #{attr_name}=\"#{attr_value}\" >"
    print yield attributes
    print "</#{tag_name}>"
  end
end


# tag("h1") do
#   "Some Title"
# end
# #=> "<h1>Some Title</h1>"

tag("a", ["href", "www.google.com"]) do
  "Google it"
end
#=> '<a href="www.google.com">Google it</a>'
