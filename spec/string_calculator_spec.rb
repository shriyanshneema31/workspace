require "string_calculator"

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 if a string is empty" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself if a given string is a single number" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers if separated by a comma" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end
  end
end
