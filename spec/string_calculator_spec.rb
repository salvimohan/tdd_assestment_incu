require_relative './../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    let(:klass) { StringCalculator }

    it 'return 0 for no argument' do
      expect(klass.add).to eq(0)
    end

    it 'return 0 for blank string' do
      expect(klass.add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(klass.add("1")).to eq(1)
    end

    it 'raises an error for negative numbers' do
      expect { klass.add("-2") }.to raise_error(RuntimeError, "negative numbers not allowed -2")
    end

    it 'returns the sum of numbers for comma-separated numbers' do
      expect(klass.add("1,5")).to eq(6)
    end

    it 'raises an error for negative numbers' do
      expect { klass.add("-2, 5") }.to raise_error(RuntimeError, "negative numbers not allowed -2")
    end

    it 'handles new lines between numbers' do
      expect(klass.add("1\n2,3")).to eq(6)
    end

    it 'return invalid input for invalid string format' do
      expect(klass.add("1,\n")).to eq("Invalid Input")
    end

    it 'supports custom delimiters' do
      expect(klass.add("//;\n1;2")).to eq(3)
    end
  end
end
