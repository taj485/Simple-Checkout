require 'milk.rb'

describe Milk do
  let(:milk) {Milk.new}
  it "can create an instance of Milk" do
    expect(Milk.new).to be_an_instance_of(Milk)
  end

  it "can view the price" do
    expect(milk.price).to eql(1)
  end
end
