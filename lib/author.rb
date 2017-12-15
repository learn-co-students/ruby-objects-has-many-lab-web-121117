class Author

  attr_accessor :name, :posts

  @@all = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
    post.author_name = @name
  end

  def add_post_by_title(title)
    p = Post.new(title)
    add_post(p)
  end

  def self.post_count
    @@post_count
  end

  end