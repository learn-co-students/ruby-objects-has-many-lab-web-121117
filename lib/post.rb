class Post

  attr_accessor :title, :author, :author_name

  def initialize(title)
    @title = title
  end

  def author=(author)
    @author = author
    @author_name = author.name
  end

  def artist
    @artist
  end

  def author_name=(author_name)
    @author_name = author_name
  end

  def author_name
    if @author_name
      @author_name
    else
      nil
    end
  end

end