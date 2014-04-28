require_relative 'spec_helper'

describe Animal do
  before :each do
    @animal = Animal.new("Tiny", 3, nil, "cat")
  end

  describe "#new" do
    it "takes four parameters and returns an Animal object" do
      expect(@animal).to be_an_instance_of(Animal)
    end
  end

  it 'has a changeable name' do
    expect(@animal.name).to eq 'Tiny'
    @animal.name = 'Tether'
    expect(@animal.name).to eq 'Tether'
  end

  it 'has an age' do
    @animal.age << 3
    expect(@animal.age).to eq 3
  end

  it 'has toys' do
    @animal.toys << "Larry the cow"
    expect(@animal.toys.count).to eq 1
  end

  it 'can describe itself' do
    @animal.toys << "mice"
    @animal.toys << "yarn"
    expect(@animal.to_s).to eq "Tiny is a 3 year old cat that loves mice, yarn"
  end

end
