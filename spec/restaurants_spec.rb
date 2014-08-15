require 'rspec'
require 'restaurants'

describe Food do
  it 'initializes a new restaurant' do
    test_food = Food.new('Hot Lips')
    expect(test_food).to be_an_instance_of Food
  end
end
