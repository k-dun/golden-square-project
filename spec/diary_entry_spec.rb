require 'diary_entry'

RSpec.describe DiaryEntry do
  it "initiates" do
    diary_entry = DiaryEntry.new("Title", "Content")
    expect(diary_entry.title).to eq "Title"
    expect(diary_entry.content).to eq "Content"
  end

  describe "#count_words" do
    it "counts words in the content" do
      diary_entry = DiaryEntry.new("Title", "Content is king")
      expect(diary_entry.count_words).to eq 3
    end

    it "fails when content empty" do
      diary_entry = DiaryEntry.new("Title", "")
      expect { diary_entry.count_words }.to raise_error "Invalid content."
    end
  end

  describe "#reading_time" do
    it "counts estimate time to read" do
      diary_entry = DiaryEntry.new("Title", "Makers " * 350)
      expect(diary_entry.reading_time(100)).to eq 4
    end

    it "fails when wpm is zero" do
      diary_entry = DiaryEntry.new("Title", "")
      expect { diary_entry.reading_time(0) }.to raise_error "Value of words-per-minute can't be zero."
    end
  end

  describe "#reading_chunk" do
    context "with content readable within the time" do
      it "returns the whole text" do
        diary_entry = DiaryEntry.new("Title", "one two three")
        expect(diary_entry.reading_chunk(5, 1)).to eq ("one two three")
      end
    end

    context "with content not readable within the time" do
      it "returns a readable chunk of text" do
        diary_entry = DiaryEntry.new("Title", "one two three")
        expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
      end
      
      it "returns the next chunk" do
        diary_entry = DiaryEntry.new("Title", "one two three")
        diary_entry.reading_chunk(2, 1)
        expect(diary_entry.reading_chunk(2, 1)).to eq "three"
      end
      
      it "restarts if the whole text has been read" do
        diary_entry = DiaryEntry.new("Title", "one two three")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(2, 1)
        expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
      end
    end
  end
end