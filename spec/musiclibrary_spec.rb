require 'musiclibrary'

RSpec.describe MusicLibrary do
  library = MusicLibrary.new
  track_1 = Track.new("Carte Blanche", "Veracocha")
  track_2 = Track.new("Synaesthesia", "The Thrillseekers")
  library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]
end

