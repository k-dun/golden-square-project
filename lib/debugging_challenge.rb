def get_most_common_letter(text)
  counter = Hash.new(0)
  text.gsub!(/[^A-Za-z]/, "").split("").each do |char|
    counter[char] += 1
  end
  counter.sort_by { |k, v| v }.to_h.keys[-1]
end