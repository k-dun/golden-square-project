class MusicTracks
  def initialize
    @track_list = []
  end

  def add(track)
    raise "Wrong data type." if !(track.is_a?(String))
    @track_list << track
    return true
  end

  def print_tracklist
    raise "Tracklist is empty." if @track_list.empty?
    return @track_list.join("\n")
  end
end