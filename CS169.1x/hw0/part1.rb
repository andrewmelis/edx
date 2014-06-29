require 'rspec/autorun'

def sum(integers)
  integers.inject(&:+) || 0
end

def max_2_sum(integers)
  sum(integers.sort.last(2))
end

def sum_to_n?(integers, n)
  integers.combination(2).any? {|a,b| a + b == n}
end

RSpec.describe "Part 1" do

  describe "sum" do
    it "returns the sum of an input array of numbers" do
      expect(sum([1,2,3])).to eq(6)
    end

    it "returns 0 for an empty array" do
      expect(sum([])).to eq(0)
    end
  end

  describe "max_2_sum" do
    it "returns the sum of the largest two numbers in an input array" do
      expect(max_2_sum([2,1,3])).to eq(5)
    end

    it "returns the only number in an array of size 1" do
      expect(max_2_sum([5])).to eq(5)
    end

    it "returns 0 for an empty array" do
      expect(max_2_sum([])).to eq(0)
    end
  end

  describe "sum_to_n?" do
    it "returns true if any two distinct elements sum to n" do
      expect(sum_to_n?([1,5,4,6], 7)).to be true
    end
    
    it "returns false if no two distinct elements sum to n" do
      expect(sum_to_n?([1,5,4,6], 12)).to be false
    end

    it "returns false if the input array has a single element" do
      expect(sum_to_n?([], 5)).to be false
    end

    it "returns false if the input array is empty" do
      expect(sum_to_n?([], 5)).to be false
    end

  end

end

