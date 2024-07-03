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

    it "should add all the given digits that are comma separated" do
      an = AddNumbers.new
      expect(an.add("6,4,5,7,9")).to eq 31
    end
  end
end