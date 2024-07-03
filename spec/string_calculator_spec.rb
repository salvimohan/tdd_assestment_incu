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
  end
end
