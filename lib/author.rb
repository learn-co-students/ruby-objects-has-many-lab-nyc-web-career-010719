
class Author

  @@all = []

  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []

    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
  end

  def self.post_count
    container = []
    @@all.each do |author|
      container << author.posts if author.posts.length > 0
    end
    container.length
  end

end
