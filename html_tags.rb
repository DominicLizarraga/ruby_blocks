def tag(content)
  print "<#{content}>"
  print yield
  print "</#{content}>\n"
end


tag(:h1) { "Breaking News!" }
tag(:h2) { "Massive Ruby Discovered" }


tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end
