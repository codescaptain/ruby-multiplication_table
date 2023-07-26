# spec/multiplication_table/is_prime_number_spec

require_relative '../../multiplication_table'

RSpec.describe '#is_prime_number?' do
  it '2, 3 are prime numbers' do
    expect(is_prime_number?(2)).to eq(true)
    expect(is_prime_number?(3)).to eq(true)
  end

  it '4, 6 are not prime numbers' do
    expect(is_prime_number?(4)).to eq(false)
    expect(is_prime_number?(6)).to eq(false)
  end
end