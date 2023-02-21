class Diary
  def initialize
    @diary_entries = []
  end

  def add(entry)
    @diary_entries << entry
  end

  def all
    return @diary_entries
  end

  def count_words
    sum = 0
    @diary_entries.each { |x| sum += x.count_words }
    return sum
  end

  def reading_time(wpm)
    return wpm * count_words
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    words_in_time = wpm * minutes
    words_per_post = []
    @diary_entries.each do |entry|
      words_per_post << entry.count_words if entry.count_words <= words_in_time
    end
    words_per_post.sort!
    closest = words_per_post[-1]
    @diary_entries.each { |entry| return entry if closest == entry.count_words }
  end
end