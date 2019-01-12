class Song
  attr_accessor :artist, :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @artist
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if artist == nil
      return nil
  end
    artist.name
  end


end
