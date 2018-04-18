class CashRegister
  attr_accessor :total, :items, :discount

  def initialize(discount=nil)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    @items << title
  end

  def apply_discount
    if @discount != nil

    else
      return "No discount to apply"
    end
  end

end
