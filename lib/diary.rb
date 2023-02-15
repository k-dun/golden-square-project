def make_snippet(str)
  snippet = str.split(" ")
  return str.length < 5 ? str : snippet[0..4].join(" ") + "..."
end

def count_words(str)
  return str.split(" ").size
end

def calculate_time(text)
  words = text.split(" ")
  words_amount = words.size
  words_per_minute = 200

  time_min = words_amount / words_per_minute

  return time_min < 1 ? "Estimated time: 1 min" : "Estimated time: #{time_min.ceil} min"
end