require "pry"

class Author
    attr_accessor :name

    #@@all_authors = []
    @@post_count = 0

    def initialize(name)
       @name = name
       @posts = []
       #@@all_authors << self
    end

    def posts
       @posts
    end

    def add_post(post)
      @posts << post
      post.author = self
      @@post_count += 1
    end

    def add_post_by_title(title)
      new_post = Post.new(title)
      add_post(new_post)
    end

    def self.post_count
      # total = 0
      # @@all_authors.each do |author|
      #   #binding.pry
      #   total += author.posts.size
      #
      # end
      # total
      @@post_count
    end

end
