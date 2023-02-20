require 'music_tracks'

RSpec.describe MusicTracks do
  describe '#add' do
    it 'fails' do
      tracklist = MusicTracks.new
      expect { tracklist.add(5) }.to raise_error "Wrong data type."
    end

    it 'returns true if track added successfully' do
      tracklist = MusicTracks.new
      expect(tracklist.add("Labrinth - Formula")).to eq true
    end

    it 'returns true if track added successfully' do
      tracklist = MusicTracks.new
      expect(tracklist.add("Biggie - Gimme the loot")).to eq true
    end
  end

  describe '#print_tracklist' do
    it 'fails' do
      tracklist = MusicTracks.new
      expect { tracklist.print_tracklist }.to raise_error "Tracklist is empty."
    end

    it 'prints the tracks from the track list' do
      tracklist = MusicTracks.new
      tracklist.add("Labrinth - Formula")
      expect(tracklist.print_tracklist).to eq "Labrinth - Formula"
    end

    it 'prints the tracks from the track list' do
      tracklist = MusicTracks.new
      tracklist.add("Labrinth - Formula")
      tracklist.add("Biggie - Gimme the loot")
      expect(tracklist.print_tracklist).to eq "Labrinth - Formula\nBiggie - Gimme the loot"
    end
  end

end