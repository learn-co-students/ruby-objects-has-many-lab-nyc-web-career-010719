require 'pry'
class Artist
  attr_reader :name, :songs #questioning_this

@@all = []
@@count = 0

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def add_song(song)
    # Bridge.all.select do |s|
    # s.artist == self
    @songs << song
    song.artist = self
    @@count +=1
end

def add_song_by_name(name)
  song = Song.new(name)
  self.songs << song
  song.artist = self
      @@count +=1
  # @songs << song.name
  # artist.songs.last.name = self
end

def self.song_count
    @@count
end


#   count = []
# if self.all.include?(self)
#   count << self
# end
# count.length





end# end of class

    # #tells the song, it belongs to me
    #
    # #iterate through all of the genres & see if there is a genre that matches me, artist. then loop through all the my genres an see which song mathes the given song_name
    # @songs << song
    # Bridge.all.
    # # Song.all.select do |hit|
    # #   hit.artist == self
    # #   @@all
    # end

  #iterate through all of the genres & see if there is a genre that matches me, artist. then loop through all the my genres an see which song mathes the given song_name

# def add_song_by_name(name)
#   Bridge.all.select do |genre|
#     genre.Artist ==
# end
# end
# end


#NEW CLASS
class Bridge
#each instance represents one relationship between one artist instance and on song instance
attr_reader :artist, :song

@@all = []

def self.all
  @@all
end
def initialize(artist,song)
  @artist = artist
  @song = song
  @@all << self
end


end #end of class

#
# class Artist
#
# #The #add_song_by_name method should take in an argument of a
# #name (or title), use that argument to create a new song (or post) and then associate the objects.
# attr_accessor :name
# @@all =[]
#
# def self.all
#   @@all
# end
#
# def initialize(name)
#   @name = name
#   @all << self
# end
#
#
# def add_song
#   SongArtist.all.select do |x|
#     x.Artist == self
#   end
# end
#
# def song_count
# end
#
# end # end of class
#
#
#
#
# #######################################
# #BRIDGING CLASS
# ######################################
# class SongArtist
#   attr_reader :artist, :song
#
#   def self.all
#     @@all
#   end
#
#   def initialize(artist, song)
#     @artist = artist
#     @song = song
#     @@all << self
#   end
#
# end #end of SongArtist
