class Product
  attr_accessor :name, :price

  def initialize(name, price, taxed=false)
    @name = name
    @price = price
    @taxed = taxed
  end

  def total
    if @taxed
      @price * 1.13  # =>  Return price
    else
      @price * 1.05 # =>  Return
    end
  end
end

class Cart

  attr_reader :taxed, :price

  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total
    puts "The total cost of the list with tax is:"
    sum = 0
    @products.each do |product|
      sum += product.total
      end
      sum.round(2)
  end

  def to_s
    @products.each do |x|
      puts x
    end
  end
end

book = Product.new("Book", 12.49)
cd = Product.new("CD", 14.99, true)
chocolate_bar = Product.new("Chocolate Bar", 0.85)
cart1 = Cart.new
cart1.add_product(book)
cart1.add_product(cd)
cart1.add_product(chocolate_bar)



puts cart1.total



import_chocolates = Product.new("Imported Chocolates", 10.00)
import_perfume = Product.new("Imported Perfume", 47.50, true)
cart2 = Cart.new
cart2.add_product(import_chocolates)
cart2.add_product(import_perfume)

puts cart2.total


import_perfume2 = Product.new("Imported Perfume", 27.99, true)
perfume = Product.new("Perfume", 18.99, true)
headache_pills = Product.new("Headache Pills", 9.75)
imported_chocolates2 = Product.new("Imported Chocolates", 11.25)
cart3 = Cart.new
cart3.add_product(import_perfume2)
cart3.add_product(perfume)
cart3.add_product(headache_pills)
cart3.add_product(imported_chocolates2)

puts cart3.total

