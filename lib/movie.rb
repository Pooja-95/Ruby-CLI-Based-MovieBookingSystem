class Movie
  attr_reader :title, :genre, :shows

  def initialize(title, genre, shows)
    @title = title
    @genre = genre
    @shows = shows
  end
end