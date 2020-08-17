class Book
  attr_accessor :author, :page_count ::duma
  attr_reader :title, :genre
  GENRES = []
  def initialize(title)
    @title = title
    @@duma = "linda"
  end


  def genre=(genre)
    @genre = genre
    GENRES << @genre
    #we're defining the genre= ourselves becaue we wanta customized version
    #you CANNOT push the genre instance variable in the initialize method. why?
    #becaus at that time, its value is not defined. you can't put a reference and expect it to update
    #it doesnt happen!! i still am not sure the exact details of reference vs copy
  end


  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

end
