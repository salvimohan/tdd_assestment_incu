RSpec.describe StringCalculator do
  describe '.add' do
    it 'return 0 for no argument' do
      expect(StringCalculator.add).to eq(0)
    end
  end
end
