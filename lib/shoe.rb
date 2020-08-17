require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = [] #class constant

  def initialize(brand)
    self.brand=(brand)
  end

  def brand=(brand)
    @brand = brand
    if !BRANDS.include?(brand) #if array doens't include brand already
    binding.pry
    BRANDS << @brand
    binding.pry
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
