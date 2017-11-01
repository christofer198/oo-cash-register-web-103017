require 'pry'
class CashRegister

  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def discount
    @discount
  end

  def add_item(title, price, quantities=1)
    currenttotal = price*quantities
    @total += currenttotal
  end

  def apply_discount
    @total = (@total - (@total*(@discount*0.01))).to_f
    return "After the discount, the total comes to #{@total}."
    #binding.pry
  end





end
