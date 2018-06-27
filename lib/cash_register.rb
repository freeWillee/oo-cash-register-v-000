require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
      @total = 0
      @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += (quantity * price)
  end

  def apply_discount
    @total = @total * (1 - (@discount/100))
  end

end
