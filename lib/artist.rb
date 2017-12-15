require_relative 'song'
require 'pry'

class Artist

  @@song_count = 0
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @@song_count += 1
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@song_count
  end
end

# adele = Artist.new("Adele")
# hello = Song.new("Hello")
# adele.add_song(hello)
