require 'pry'
class Artist

attr_accessor :name

@@song_count = 0

def initialize(name)
  @name = name
  @songs = []
end


#instance of a song that hes previously been created
#or you can make a new one here by Song.new
def add_song(song)
  @songs << song
  song.artist = self
  @@song_count += 1
end

def songs
  @songs
end

def add_song_by_name(song_name)
  song_name = Song.new(song_name)
  add_song(song_name)
end

def self.song_count
  @@song_count
end


end
