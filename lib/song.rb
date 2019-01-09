class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end #End of initialize method

  def self.all
    @@all
  end #End of all method

  def artist_name
      artist.name if artist
  end #End of artist_name method
end #End of Song class
