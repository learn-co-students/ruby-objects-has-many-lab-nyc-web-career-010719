class Song
  attr_accessor :name,:artist
  @@all =[]
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    # @artist = artist
    @@all << self
  end
  def artist_name
    if artist == nil
      return nil
    end
    artist.name
  end

end
