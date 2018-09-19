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
    if @discount.to_i == 0
      "There is no discount to apply."
    else
      @total = @total - @total * @discount / 100.00
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @add_item
    title * quantity
  end




end
