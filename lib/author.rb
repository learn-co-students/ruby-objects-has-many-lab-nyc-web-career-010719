
require 'pry'
class Author

attr_accessor :name, :posts

@@count = 0

def initialize(name)
  @name = name
  @posts = []
end

def add_post(post)
  # Bridge.all.select do |s|
  # s.artist == self
  @posts << post
  post.author = self
  @@count +=1
end

def add_post_by_title(title)
post = Post.new(title)
self.posts << post
post.author = self
    @@count +=1
# @songs << song.name
# artist.songs.last.name = self
end

def self.post_count
  @@count
end

end # end of class
