# frozen_string_literal: true

class StringCalculator
  class << self
    def add(string_number = '')
      return 0 if string_number.empty?

      numbers = string_number.split(',').map(&:to_i)
      negatives = numbers.select(&:negative?)
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

      numbers.sum
    end
  end
end
