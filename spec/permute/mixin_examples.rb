require 'spec_helper'

require 'combinatorics/permute'

shared_examples_for "Permute::Mixin" do
  it "should alias rearrange to permute" do
    aset = subject[1]

    aset.should respond_to(:rearrange)
  end

  describe "#permute" do
    it "should return [[]] for [].permute(0).to_a" do
      aset = subject[[]]

      aset.permute(0).to_a.should == [[]]
    end

    it "should return [[]] for [1].permute(0).to_a" do
      aset = subject[[1]]

      aset.permute(0).to_a.should == [[]]
    end

    it "should return [[1]] for [1].permute(1).to_a" do
      aset = subject[1]

      aset.permute(1).to_a.should == [[1]]
    end

    it "should return [[1], [2]] for [1, 2].permute(1).to_a" do
      aset = subject[1, 2]

      aset.permute(1).to_a.should == [[1], [2]]
    end

    it "should return [[1, 2]] for [1, 2].permute(2).to_a" do
      aset = subject[1, 2]

      aset.permute(2).to_a.should == [[1, 2], [2, 1]]
    end
  end
end
