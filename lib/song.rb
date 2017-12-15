class Song

  attr_accessor :name
  

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
    @artist_name = artist.name
  end

  def artist
    @artist
  end

  def artist_name=(artist_name)
    @artist_name = artist_name
  end

  def artist_name
    if @artist_name
      @artist_name
    else
      nil
    end
  end

end
