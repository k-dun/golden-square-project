class DiaryEntry
  def initialize(title, content)
    @title = title
    @content = content
    @chunk_mark = 0
  end

  def title
    return @title
  end

  def content
    return @content
  end

  def count_words
    fail "Invalid content." if @content.empty?
    return @content.split(" ").size
  end

  def reading_time(wpm)
    fail "Value of words-per-minute can't be zero." if wpm == 0
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    return @content if wpm * minutes >= count_words
    words_per_chunk = wpm * minutes
    if @chunk_mark == 0 || @chunk_mark >= words.size
      chunk = words[0, words_per_chunk]
      @chunk_mark += words_per_chunk
      return chunk.join(" ")
    else
      chunk = words[@chunk_mark, @chunk_mark + words_per_chunk]
      @chunk_mark += words_per_chunk
      return chunk.join(" ")
    end
  end

  private

  def words
    return @content.split(" ")
  end
end