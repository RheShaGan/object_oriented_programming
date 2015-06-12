class Product
  attr_accessor :price

  def initialize(name, price, qty)
    @price = price
  end

  def imported?
    !!@name["imported"]
  end

  def total
    price * qty
  end

  def tax_on_regular
    total * 0.10
  end

  def tax_on_imported
    total * 0.15
  end

  def total_with_tax
    if imported?
      total + tax_on_imported
    else
      # do something
    end
  end
end

def line_to_product(line)
  qty_and_name, price = line.split(" at ")
  qty, name = qty_and_name.split(" ", 2)
  
  Product.new(name, price, qty)
end


products = []
loop do
  print "insert>"
  line = gets.chomp
  products << line_to_product(line)
end

p products

# h = {}
# a = [["dog", 5], ["elephant", 5000]]
# a.each { |name,price| h[name] = price }

# [["dog", 5]].to_h
# h = a.to_h
#puts item_array
#grocery.reverse!
#frequencies.each do |x, y|
# puts x + " " + y.to_s
# end


