require 'shopping_calculator'

describe ShoppingCalc do
  let(:shopping_calc) { ShoppingCalc.new }
  it 'can create an instance of it self' do
    expect(ShoppingCalc.new).to be_an_instance_of(ShoppingCalc)
  end

  it 'can scan item in to the basket' do
    milk = Milk.new
    shopping_calc.scan(milk)
    expect(shopping_calc.basket[0]).to be_an_instance_of(Milk)
  end

  it 'can show me a total of all scanned items' do
    shopping_calc.scan(Milk.new)
    expect(shopping_calc.total).to eql(1)
  end

  it 'can total all the items in the basket' do
    shopping_calc.scan(Milk.new)
    shopping_calc.scan(Milk.new)
    expect(shopping_calc.total).to eql(2)
  end

end
