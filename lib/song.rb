require 'pry'
class Song
  attr_reader :name
  attr_accessor :artist

@@all = []

def self.all
  @@all
end

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

def artist_name
  if @artist == nil
    return nil
  else
  @artist.name
end
end

end



# def artist
#   self.bridging.map do |s|
#     s.artist
#   end
# end
#
# def artist_name
#   self.artist.find do |a|
#     a.artist.name
# end
# end
 #end of class
# class Song
#   attr_accessor :name, :artist
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   # def artist_name
#   #   Artist.all.find do |list|
#   #     list.song == self
#   #   end
#
# end #end of class
