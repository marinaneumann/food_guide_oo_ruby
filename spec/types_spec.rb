require 'rspec'
require 'types'

describe Type do

  describe '.all' do
    it 'is an empty array for types' do
      expect(Type.all).to eq []
    end
  end

  describe '#save' do
    it 'adds types into an array of saved types' do
      test_type = Type.new('Italian')
      test_type.save
      expect(Type.all).to eq [test_type]
    end
  end

  describe '.clear' do
    it 'empties out all of the saved food groups' do
      Type.new('American').save
      Type.clear
      expect(Type.all).to eq []
    end
  end

  it 'initializes a new food group' do
    test_type = Type.new('Mexican')
    expect(test_type).to be_an_instance_of Type
  end

  it 'adds food places to a type class' do
    test_type = Type.new('Mexican')
    test_food = Food.new('Por que no?')
    test_type.add_food(test_food)
    expect(test_type.food).to eq ([test_food])
  end

end
