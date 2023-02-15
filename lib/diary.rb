def make_snippet(str)
  snippet = str.split(" ")
  return snippet[0..4].join(" ") + "..."
end