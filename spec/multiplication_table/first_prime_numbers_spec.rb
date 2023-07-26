# spec/multiplication_table/first_prime_numbers

require_relative '../../multiplication_table'

RSpec.describe '#first_prime_numbers' do
  context 'with the param' do
    it 'should return the first N prime numbers' do
      number = 3
      expect(first_prime_numbers(number)).to eq([2, 3, 5])
    end
  end

  context 'the param equals 0' do
    it 'should return first N prime numbers' do
      expect(first_prime_numbers(0)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end
  end
end