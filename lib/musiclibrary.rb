class MusicLibrary
  def initialize
    # ...
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # returns nothing
  end

  def all
    # Returns a list of track objects
  end

  def search_by_title(keyword) # keyword is a string
    # Returns a list of tracks with titles including the keyword
  end
end
