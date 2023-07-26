# spec/multiplication_table/continue

require_relative '../../multiplication_table'

RSpec.describe '#continue?' do
  it 'should return true' do
    expect(continue?("N")).to eq(true)
  end

  it 'should return false' do
    expect(continue?("Y")).to eq(false)
  end
end