require 'pry'
require_relative "../lib/post.rb"


class Author

  attr_accessor :name, :post

  def self.post_count
    Post.all.count
  end

  def initialize(name)
    @name = name
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end

end #end of class
