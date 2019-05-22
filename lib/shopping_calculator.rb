require 'milk'

class ShoppingCalc
  attr_reader :basket
  def initialize
    @basket = []
  end

  def scan(item)
    @basket.push(item)
  end

  def total
    total = 0
    @basket.each { |item| total += item.price }
    return total
  end
end
