def make_snippet(str)
  snippet = str.split(" ")
  return snippet[0..4].join(" ") + "..."
end

def count_words(str)
  return str.split(" ").size
end

def calculate_time(text)
  words = text.split(" ")
  words_amount = words.size
  words_per_minute = 200
  words_per_second = (words_per_minute / 60.0)

  time = (words_amount / words_per_second)

  return "Estimated time: #{(time / 60).ceil.to_i} minute(s) #{(time % 60).to_i} second(s)"
end