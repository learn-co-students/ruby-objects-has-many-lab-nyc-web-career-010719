# require_relative './song'
require 'pry'
class Artist
  attr_accessor :name,:songs

  def initialize(name)
    @name = name

  end
  def songs
    Song.all
  end
  def add_song(song)
    song.artist = self
  end
  def add_song_by_name(str)
    add_song(Song.new(str))
  end

  def self.song_count
    # puts songs
    Song.all.count
    # binding.pry
  end
end

drake = Artist.new("Drake")
# binding.pry
