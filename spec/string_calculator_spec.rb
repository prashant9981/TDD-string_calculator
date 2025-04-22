# spec/string_calculator_spec.rb
require './string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calc = StringCalculator.new
      expect(calc.add('')).to eq(0)
    end

    it 'returns the number itself for a single number' do
      calc = StringCalculator.new
      expect(calc.add('1')).to eq(1)
    end

    it 'returns the addition of number if number is separated by comma' do
      calc = StringCalculator.new
      expect(calc.add('1,5')).to eq(6)
    end

    it 'handles multiple numbers with new line delimeter' do
      calc = StringCalculator.new
      expect(calc.add('1,2\n3')).to eq(6)
    end

    it "should return error when negative numbers are passed" do
      calc = StringCalculator.new
      expect { calc.add('1,-2,3') }.to raise_error(RuntimeError, "Negative numbers not allowed: -2")
    end
  end
end