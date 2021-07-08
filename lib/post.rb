class Post
  attr_accessor :title,:author
  @@all =[]
  def self.all
    @@all
  end
  def initialize(title)
    @title = title
    # @artist = artist
    @@all << self

  end
  def author_name
    if author == nil
      return nil
    end
    author.name
  end

end
