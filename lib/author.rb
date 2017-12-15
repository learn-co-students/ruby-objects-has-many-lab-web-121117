

require "pry"

class Author

  attr_reader :name
  attr_accessor :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count +=1
  end

  def add_post_by_title(post)
    hold = Post.new(post)
    hold.author = self
    @posts << hold
    @@post_count +=1
  end

  def self.post_count
    @@post_count
  end

end
