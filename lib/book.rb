class Book
  attr_accessor :author, :page_count,
  attr_reader :title :genre
  GENRES = []

  def initialize(title)
    @title = title
  end

  def genre=(genre)
    @genre = genre
    GENRES << @genre
    #at first, before genre is defined, this will be emtpy
    #but i guess whne its defined, then this is updated...
    #i'm not sure the logic behind. reference vs copy


  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

end
