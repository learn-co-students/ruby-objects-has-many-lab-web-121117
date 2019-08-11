require_relative 'author'

require 'pry'
class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    if @author
      @author.name
    else
      nil
    end
  end

end
