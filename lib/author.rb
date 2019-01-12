
# require_relative './song'
require 'pry'
class Author
  attr_accessor :name,:posts

  def initialize(name)
    @name = name

  end
  def posts
    Post.all
  end
  def add_post(post)
    post.author = self
  end
  def add_post_by_title(str)
    add_post(Post.new(str))
  end

  def self.post_count
    # puts songs
    Post.all.count
    # binding.pry
  end
end

drake = Author.new("Drake")
# binding.pry
