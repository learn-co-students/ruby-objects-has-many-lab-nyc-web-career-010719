class Post

  attr_accessor :title, :author, :genre
  @@all = []

  def initialize(title)
    @title = title
    @author = author
    @@all << self
  end

  def author_name
    self.author ? self.author.name : nil # ternary operator
  end

  def self.all
    @@all
  end

end
