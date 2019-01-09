class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end #End of initialize method

  def self.all
    @@all
  end #End of all method

  def posts
    Post.all.select {|post| post.author == self}
  end #End of posts method

  def add_post(post)
    post.author = self
  end #End of add_post method

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
  end #End of add_post_by_title method

  def self.post_count
    Post.all.count
  end #End of post_title method

end #End of Author class
