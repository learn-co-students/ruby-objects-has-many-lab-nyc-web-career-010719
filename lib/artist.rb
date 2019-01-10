require "pry"

class Artist
    attr_accessor :name

    #@@all_artists = []
    @@song_count = 0

    def initialize(name)
       @name = name
       @songs = []
       #@@all_artists << self
    end

    def songs
       @songs
    end

    def add_song(song)
      @songs << song
      song.artist = self
      @@song_count += 1
    end

    def add_song_by_name(name)
      new_song = Song.new(name)
      add_song(new_song)
    end

    def self.song_count
      # total = 0
      # @@all_artists.each do |artist|
      #   #binding.pry
      #   total += artist.songs.size
      #
      # end
      # total
      @@song_count
    end

end
