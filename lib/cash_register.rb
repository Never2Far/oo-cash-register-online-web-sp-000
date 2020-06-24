class CashRegister

attr_accessor :total, :discount


def initialize(emp_discount = 0)
  @total = 0.0
  @discount = emp_discount
  @items = []
end


def total
 return @total
end


def add_item(title, price, qty = 1)
  total_backup = @total
  qty.times do
    @items << title
    @total += price
  end
end


def apply_discount
  @total -= @total*(discount / 100.0)
  puts "After the discount, the total comes to $#{@total}."
end

# def
# end
#
# def
# end
#
# def
# end
#
# def
# end
#
# def
# end

end
