require 'rspec'
require 'types'
describe Type do
  before do
    Type.clear
  end

  it 'initializes a new food group' do
    test_type = Type.new('Mexican')
    expect(test_type).to be_an_instance_of Type
  end

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

  describe '#delete' do
    it 'deletes type from array of saved types' do
      test_type = Type.new('Indian')
      test_type.delete
      expect(Type.all).to eq []
    end
  end

end
