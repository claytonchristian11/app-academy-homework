require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:dess) {Dessert.new("dess",100, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dess.type).to eq("dess")
    end

    it "sets a quantity" do
      expect(dess.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
    expect(dess.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
    expect {Dessert.new("dess","not_an_integer",chef)}.to raise_error(ArgumentError)
  end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dess.add_ingredient("spice")
      expect(dess.ingredients).to include("spice")
    end

  end

  describe "#mix!" do

    it "shuffles the ingredient array" do
      ingredient = ["1","2","3"]
      # dess.add_ingredient("1")
      # dess.add_ingredient("2")
      # dess.add_ingredient("3")
      dess.mix!

      expect(dess.ingredients).not_to eq(ingredient)
    end


  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dess.eat(10)
      expect(dess.quantity).to eq(90)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dess.eat(101)}.to raise_error()
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dess.serve).to eq("Chef has made 100 Dess!")
    end


  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dess)
      dess.make_more
    end
  end
end
