require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all_songs = []
  @@song_count = nil

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@all_songs << song
    @songs
  end

  def add_song_by_name(name)
    new_song = Song.new(name, self)
    @songs << new_song
    @@all_songs << new_song
  end

  def self.song_count
    @@song_count = @@all_songs.count
  end

end