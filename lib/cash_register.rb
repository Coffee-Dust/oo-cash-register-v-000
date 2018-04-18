class CashRegister
  attr_accessor :total, :items, :discount, :last_item

  def initialize(discount=nil)
    @total = 0.0
    @items = []
    @discount = discount
    @last_item = {}
  end

  def add_item(title, price, quantity=1)
    @total += price.to_f * quantity
    @items << title
    @last_item[title] = price
  end

  def apply_discount
    if @discount != nil
      discount_total = @total * @discount / 100
      @total -= discount_total
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_item[items.last] if @last_item[items.last].is_a? Float
  end
end
