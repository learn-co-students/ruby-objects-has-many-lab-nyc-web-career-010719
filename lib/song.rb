require_relative './artist'

class Song

  attr_accessor :name, :artist

  @@all = []

  def self.all
    @@all
  end

def initialize(name)
  @name = name
  @@all << self
end

def artist_name
  if !self.artist
    return nil
  else
    self.artist.name
  end
end






end #end of Song class
