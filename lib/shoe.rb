require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = [] #class constant

  def initialize(brand)
    self.brand=(brand)
    #apparently the user wants to pass brand at initilaization, not later
    #you can put all the code in brand= i here, but its too long, thus we use a separate method
  end

  def brand=(brand)
    @brand = brand
    if !BRANDS.include?(brand) #if array doens't include brand already
    BRANDS << @brand
    end
  end

  brands = ["Uggs", "Rainbow", "Nike", "Nike"]
  brands.each do |brand|
    Shoe.new(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
