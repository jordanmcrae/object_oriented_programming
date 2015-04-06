# =>  Sales tax = 10 % on all goods except for food, books and medical products
# =>  Import duty = 5% on all products (no exceptions)
# =>  When I purchase items I receive a receipt which lists the name of all the items and their price
# =>  (including tax), finishing with the total cost of the items, and the total amounts of sales taxes
# =>  paid.
# =>  The rounding rules for sales tax are that for a tax rate of n%, a shelf price of p contains
# =>  (np/100 rounded up to the nearest 0.05) amount of sales tax.

class PriceCalculator
  attr_accessor :item_totals

  def initialize(item_name)
    @item_name = item_name
    @item_price = item_price
    @item_totals = []
  end

  def item_price
    puts "What is the price of the item: #{@item_name}?"
    @item_price = gets.chomp.to_f
  end

  def item_category
    puts "Is your item eligible for sales tax? (Exempt items include: food, books and medical products) -- Please input yes or no."
    st_eligibile = gets.chomp.to_s.upcase

    if st_eligibile == "YES"
     st_imp_price = ((@item_price * 0.10) + (@item_price * 0.05) + @item_price)
     @item_totals << st_imp_price
    elsif
      st_eligibile == "NO"
      imp_price = ((@item_price * 0.05) + @item_price)
      @item_totals << st_imp_price
    else
      puts "That is not a valid command."
    end
  end
end


# .round(2)

item_1 = PriceCalculator.new("Apple")

puts item_1.item_category

item_2 = PriceCalculator.new("Orange")

puts item_2.item_category

puts $item_totals


# to figure out the tax, subtract item_price from item_category, add item_price for total without tax


