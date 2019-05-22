require 'milk'

class ShoppingCalc
  attr_reader :basket
  def initialize
    @basket = []
  end

  def scan(item)
    @basket.push(item)
  end

  def view_cart
    @basket.each { |item| return item.name }
  end

  def total
    total = 0
    @basket.each { |item| total += item.price }
    puts "@@@@@"
    puts total
    return total
  end
end
