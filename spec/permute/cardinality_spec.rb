require 'spec_helper'
require 'combinatorics/permute'

describe Permute do
  subject { Object.new.extend(Permute) }

  describe 'cardinality' do
    it 'should raise RangeError if n is negative without passing r' do
      lambda { subject.cardinality(-1) }.should raise_error(RangeError)
    end

    it 'should raise RangeError if n is negative when r is provided' do
      lambda { subject.cardinality(-1, 1) }.should raise_error(RangeError)
    end

    it 'should raise RangeError if r is negative' do
      lambda { subject.cardinality(1, -1) }.should raise_error(RangeError)
    end

    it 'should raise RangeError if r is greater than n' do
      lambda { subject.cardinality(2, 3) }.should raise_error(RangeError)
    end

    it 'should return 1 for subject.cardinality(0)' do
      subject.cardinality(0) == 1
    end

    it 'should return 1 for subject.cardinality(1)' do
      subject.cardinality(1) == 1
    end

    it 'should return 2 for subject.cardinality(2)' do
      subject.cardinality(2) == 2
    end

    it 'should return 6 for subject.cardinality(3)' do
      subject.cardinality(3) == 6
    end

    it 'should return 24 for subject.cardinality(4)' do
      subject.cardinality(4) == 24
    end

    it 'should return 0 for subject.cardinality(1, 0)' do
      subject.cardinality(1, 0).zero?
    end

    it 'should return 1 for subject.cardinality(1, 1)' do
      subject.cardinality(1, 1) == 1
    end

    it 'should return 2 for subject.cardinality(2, 1)' do
      subject.cardinality(2, 1) == 2
    end

    it 'should return 1 for subject.cardinality(2, 2)' do
      subject.cardinality(2, 2) == 1
    end

    it 'should return 3 for subject.cardinality(3, 1)' do
      subject.cardinality(3, 1) == 3
    end

    it 'should return 3 for subject.cardinality(3, 2)' do
      subject.cardinality(3, 2) == 3
    end

    it 'should return 1 for subject.cardinality(3, 3)' do
      subject.cardinality(3, 3) == 1
    end

    it 'should return 4 for subject.cardinality(4, 1)' do
      subject.cardinality(4, 1) == 4
    end

    it 'should return 6 for subject.cardinality(4, 2)' do
      subject.cardinality(4, 2) == 6
    end

    it 'should return 4 for subject.cardinality(4, 3)' do
      subject.cardinality(4, 3) == 4
    end

    it 'should return 1 for subject.cardinality(4, 4)' do
      subject.cardinality(4, 4) == 1
    end

    it 'should return 360 for subject.cardinality(6, 4)' do
      subject.cardinality(6, 4) == 360
    end

    it 'should return 3628800 for subject.cardinality(10)' do
      subject.cardinality(10) == 3628800
    end
  end

  describe 'cardinality_all' do
    it 'should return [] for cardinality_all(0)' do
      subject.cardinality_all(0).empty?
    end

    it 'should return [1] for cardinality_all(1)' do
      subject.cardinality_all(1) == [1]
    end

    it 'should return [2, 1] for cardinality_all(2)' do
      subject.cardinality_all(2) == [2, 1]
    end

    it 'should return [3, 6, 1] for cardinality_all(3)' do
      subject.cardinality_all(3) == [3, 6, 1]
    end

    it 'should return [4, 12, 24, 1] for cardinality_all(4)' do
      subject.cardinality_all(4) == [4, 12, 24, 1]
    end

    it 'should raise RangeError for cardinality_all(-1)' do
      lambda { subject.cardinality_all(-1) }.should raise_error(RangeError)
    end

    it 'should alias cardinality to len' do
      subject.should respond_to(:len)
    end

    it 'should wrap cardinality with Permute.N' do
      Permute.should respond_to(:N)
    end

    it 'should wrap cardinalith with Permute.R' do
      Permute.should respond_to(:R)
    end

    it 'should wrap cardinality with Permute.NR' do
      Permute.should respond_to(:NR)
    end

    it 'should alias cardinality_all to len_all' do
      subject.should respond_to(:len_all)
    end

    it 'should alias cardinality_all to N_all' do
      subject.should respond_to(:N_all)
    end

    it 'should alias cardinality_all to NR_all' do
      subject.should respond_to(:NR_all)
    end

    it 'should alias cardinality_all to R_all' do
      subject.should respond_to(:R_all)
    end
  end
end
