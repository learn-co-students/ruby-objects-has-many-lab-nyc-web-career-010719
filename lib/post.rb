class Post

@@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    author.name if author
  end
#class method
  def self.all
    @@all
  end


end #end of Song class
