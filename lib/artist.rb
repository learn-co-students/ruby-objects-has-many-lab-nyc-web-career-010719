class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end #End of initialize method

  def self.all
    @@all
  end #End of all method

  def songs
    Song.all.select{ |song| song.artist == self}
  end #End of songs method

  def add_song(song)
   song.artist = self
  end #End of add_song method

  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
  end #End of add_song_by_name method

  def self.song_count
    Song.all.count
  end #End of song_count method

end #End of Artist class
