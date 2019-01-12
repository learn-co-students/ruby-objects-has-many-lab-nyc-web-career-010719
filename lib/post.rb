class Post

  attr_accessor :author
  attr_reader :title
  @@all = []

  def initialize(title)
    @title=title
    @author
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if author == nil
      return nil
  end
    author.name
  end

  def post_count
    @@all.length
  end

end
