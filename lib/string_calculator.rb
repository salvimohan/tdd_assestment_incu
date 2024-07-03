# frozen_string_literal: true

class StringCalculator
  class << self
    def add(string_number = '')
      return 0 if string_number.empty?

      numbers = string_number.split(',')
      negatives = numbers.map(&:to_i).select(&:negative?)
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

      numbers = string_number.split(/,|\n/)
      numbers.map(&:to_i).sum
    end
  end
end
