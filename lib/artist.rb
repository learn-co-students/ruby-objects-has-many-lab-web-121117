class Artist

  attr_accessor :name, :songs

  @@all = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
    song.artist_name = @name
  end

  def add_song_by_name(name)
    s = Song.new(name)
    add_song(s)
  end

  def self.song_count
    @@song_count
  end

end