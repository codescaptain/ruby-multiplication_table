# spec/multiplication_table/create_multiplication_table

require_relative '../../multiplication_table'

RSpec.describe '#create_multiplication_table' do
  it 'generates the correct multiplication table' do
    expect { create_multiplication_table(3) }.to output("\t2\t3\t5\t\n2\t4\t6\t10\t\n3\t6\t9\t15\t\n5\t10\t15\t25\t\n").to_stdout
  end
end