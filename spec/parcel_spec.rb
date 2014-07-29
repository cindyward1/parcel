require 'rspec'
require 'parcel'

describe Parcel do
  it 'is initialized with its dimensions and its weight' do
    test_parcel = Parcel.new(12, 7, 6, 2)
    test_parcel.should be_an_instance_of Parcel
  end

  it "lists the length, width, height and weight of the parcel" do
    test_parcel = Parcel.new(12, 7, 6, 2)
    test_parcel.specifications.should eq "12, 7, 6, 2"
  end

  it "returns the length of the parcel" do
    test_parcel = Parcel.new(12, 7, 6, 2)
    test_parcel.length.should eq 12
  end

  it "returns the width of the parcel" do
    test_parcel = Parcel.new(12, 7, 6, 2)
    test_parcel.width.should eq 7
  end

  it "returns the height of the parcel" do
    test_parcel = Parcel.new(12, 7, 6, 2)
    test_parcel.height.should eq 6
  end

  it "returns the weight of the parcel" do
    test_parcel = Parcel.new(12, 7, 6, 2)
    test_parcel.weight.should eq 2
  end

  it "calculates the volume of the parcel" do
    test_parcel = Parcel.new(12, 7, 6, 2)
    test_parcel.volume.should eq 504
  end

  it "returns the cost to ship the parcel" do
    test_parcel = Parcel.new(12, 7, 6, 2)
    test_parcel.cost_to_ship.should eq 15.00
  end
end


