class CashRegister

attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item =[]
    @last_item = 0
  end

  def add_item(title, price, quantity=1 )
    @last_item += (price * quantity)
    quantity.times do
      @item.push(title)
    end
    @total += @last_item
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
    @item
  end

  def void_last_transaction
    @total -
  end

end
