require 'pry'
require_relative "../lib/author.rb"

class Post

  attr_accessor :title, :author
  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if author == nil
      nil
    else
      author.name
    end
  end

end #end of class
