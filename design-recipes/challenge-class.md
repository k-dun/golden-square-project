1. 
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. 

class MusicTracks
  def initialize
    #
  end

  def add(track) # track is a string
    # Raise an error "Wrong data type." if the track is not a string
    # return true if the track is added to the tracklist
  end

  def print_tracklist
    # Raise an error if the tracklist is empty.
    # Otherwise print the tracklist.
  end
end

3. 

tracklist = MusicTracks.new
tracklist.add("Labrinth - Formula")
tracklist.print_tracklist => "Labrinth - Formula"

tracklist = MusicTracks.new
tracklist.print_tracklist => fails with "Tracklist is empty."

4. 
