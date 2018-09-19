class CashRegister

attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1 )
    @total += (price * quantity)
  end

  def apply_discount
    @total = CashRegister.inject {|sum, item| sum + item.price}
  end

end
