# frozen_string_literal: true

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

    it "returns the sum of multiple numbers if separated by commas and newlines" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "should supports a custom delimiter" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "should raise an error when negative numbers are passed" do
      expect { StringCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
    end

    it "should raise an error when multiple negative numbers are passed" do
      expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2, -3")
    end
  end
end
