require_relative './song'
require_relative './post'
require_relative './author'
require_relative './artist'
require 'pry'

art = Artist.new("Beyonce")

auth = Author.new('j.k rowling')
p = Post.new(auth)
s = Song.new(art)

puts s.artist.name
puts p.author.name
puts art.song_count
