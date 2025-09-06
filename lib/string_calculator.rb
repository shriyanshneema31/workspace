class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    return numbers.to_i if numbers.size == 1

    delimiters = /,|\n/
    numbers.split(delimiters).map(&:to_i).sum
  end
end
