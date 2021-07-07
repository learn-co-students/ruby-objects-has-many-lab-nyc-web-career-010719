class Author

  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    @posts << new_post
    new_post.author = self
  end

  def self.post_count
    Post.all.count
  end



end
