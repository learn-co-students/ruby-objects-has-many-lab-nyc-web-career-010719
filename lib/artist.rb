require "pry"


class Artist

  @@all = []

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []

    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    container = []
    @@all.each do |artist|
      container << artist.songs if artist.songs.length > 0
    end
    container.length
  end


end
