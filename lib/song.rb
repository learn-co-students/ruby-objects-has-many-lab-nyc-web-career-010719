class Song

  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def artist_name
    self.artist ? self.artist.name : nil # ternary operator
  end

  def self.all
    @@all
  end

end
