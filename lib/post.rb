

class Post

  attr_reader :title
  attr_accessor :author

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author == nil
      return nil
    else
      self.author.name
    end
  end

end
