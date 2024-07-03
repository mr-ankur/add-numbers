require 'add_numbers'

describe AddNumbers do
  context "add" do
    it "should return zero when empty string" do
      an = AddNumbers.new
      expect(an.add("")).to eq 0
    end
  end
end