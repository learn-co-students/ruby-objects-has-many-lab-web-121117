require "pry"
require "song"

class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end
  def add_song(song)
    self.songs << song
    # adds the song to this instance's song array
    song.artist = self
    # sets the artist field equal to this instance's name
    @@song_count +=1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self

    self.songs << song
    @@song_count += 1

  end

  def self.song_count

    @@song_count

  end




end
