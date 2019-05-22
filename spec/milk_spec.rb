require 'milk.rb'

describe Item do
  it "can create an instance of milk" do
    milk = Item.new("milk",1)
    expect(Item.new("milk",1)).to be_an_instance_of(Item)
  end

  it "can view the price" do
    milk = Item.new("milk",1)
    expect(milk.price).to eql(1)
  end
end
