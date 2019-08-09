require_relative "song"

class Artist

  @@song_count= 0

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count +=1
  end


  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    self.add_song(new_song)
  end

def self.song_count
  @@song_count
end

end
