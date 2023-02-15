def make_snippet(str)
  snippet = str.split(" ")
  return snippet[0..4].join(" ") + "..."
end

def count_words(str)
  return str.split(" ").size
end