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
    discount
    @total = (@total - (@total*(@discount*0.01))).to_f
    binding.pry
  end





end
