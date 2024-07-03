require 'add_numbers'

describe AddNumbers do
  context "add" do
    before do
      @an = AddNumbers.new
    end

    it "should return not return nil when empty string" do
      expect(@an.add("")).not_to be nil
    end

    it "should return zero when empty string" do
      expect(@an.add("")).to eq 0
    end

    it "should return single value as result if given in string" do
      expect(@an.add("6")).to eq 6
    end

    it "should add all the given digits that are comma separated" do
      expect(@an.add("6,4,5,7,9")).to eq 31
    end

    it "should add all the given digits that are comma as well as \n separated" do
      expect(@an.add("6,4\n5,7\n9")).to eq 31
    end

    it "should add all the given digits that are comma as well as \n separated and delimeter specified" do
      expect(@an.add("//;\n1;2")).to eq 3
    end

    it "should raise the error for negative numbers" do
      expect { @an.add("-4,6,-7") }.to raise_error("negative numbers not allowed <-4,-7>")
    end
  end
end