require 'add_numbers'

describe AddNumbers do
  context "add" do
    it "should return not return nil when empty string" do
      an = AddNumbers.new
      expect(an.add("")).not_to be nil
    end

    it "should return zero when empty string" do
      an = AddNumbers.new
      expect(an.add("")).to eq 0
    end

    it "should return single value as result if given in string" do
      an = AddNumbers.new
      expect(an.add("6")).to eq 6
    end
  end
end