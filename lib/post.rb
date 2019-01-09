class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end #End of initialize method

  def self.all
    @@all
  end #End of all method

  def author_name
    author.name if author
  end #End of author_name method

end #End of Post class
