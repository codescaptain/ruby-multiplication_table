require 'byebug'

def continue?(answer)
  answer == "N"
end

def is_prime_number?(number)
  return false if number < 2

  # The divisors of prime dimensions can be limited by a limit up to the square root value.
  2.upto(Math.sqrt(number).to_i) do |index|
    return false if (number % index).zero?
  end

  true
end

def first_prime_numbers(param)
  prime_numbers = []
  param = 10 if param.zero?
  # prime number start from 2
  number = 2

  while prime_numbers.length < param
    prime_numbers << number if is_prime_number?(number)
    number += 1
  end

  prime_numbers
end

def create_multiplication_table(param)
  prime_numbers = first_prime_numbers(param)
  print "\t"
  prime_numbers.each { |prime_number| print "#{prime_number}\t" }
  puts
  prime_numbers.each do |row_number|
    print "#{row_number}\t"
    prime_numbers.each { |column_number| print "#{column_number * row_number}\t" }
    puts
  end
end


while true
  puts "How many prime numbers do you want?"
  puts
  create_multiplication_table(gets.chomp.to_i)
  puts
  puts "Do you want to continue? Y or N"
  if continue?(gets.chomp.capitalize)
    break
  end
end
