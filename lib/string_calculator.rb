# frozen_string_literal: true
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    return numbers.to_i if numbers.size == 1

    delimiters = /,|\n/
    delimiters, numbers = parse_custom_delimiter(numbers) if numbers.start_with?("//")

    numbers = numbers.split(delimiters).map(&:to_i)

    negatives = numbers.select { |number| number < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    numbers.sum
  end

  private
  def self.parse_custom_delimiter(numbers)
    delimiter_line, numbers = numbers.split("\n", 2)
    delimiter = delimiter_line[2..-1]
    [delimiter, numbers]
  end
end
