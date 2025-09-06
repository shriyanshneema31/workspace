require "string_calculator"

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 if a string is empty" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end
