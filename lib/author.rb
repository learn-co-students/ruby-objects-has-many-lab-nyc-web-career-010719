require 'pry'

class Author

  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    post.author = self
  end

  def self.post_count
    Post.all.size
  end

end
