require 'shopping_calculator'

describe ShoppingCalc do
  let(:shopping_calc) { ShoppingCalc.new }
  let(:milk) { double("Item" , :name => "milk", :price => 1) }

  it 'can create an instance of it self' do
    expect(ShoppingCalc.new).to be_an_instance_of(ShoppingCalc)
  end

  it 'can scan item in to the basket' do
    shopping_calc.scan(milk)
    expect(shopping_calc.basket.count).to eql(1)
  end

  it 'can can view all items' do
    shopping_calc.scan(milk)
    expect(shopping_calc.view_cart).to eql("milk")

  end

  it 'can total all the items in the basket' do
    shopping_calc.scan(milk)
    shopping_calc.scan(milk)
    expect(shopping_calc.total).to eql(2)
  end

end
