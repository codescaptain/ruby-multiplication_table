require 'byebug'

def is_prime_number?(number)
  return false if number < 2

  2.upto(Math.sqrt(number).to_i) do |index|
    return false if (number % index).zero?
  end

  true
end

def first_prime_numbers(param)
  prime_numbers = []
  # prime number start from 2
  number = 2

  while prime_numbers.length < param
    # The divisors of prime dimensions can be limited by a limit up to the square root value.
    prime_numbers << number if is_prime_number?(number)
    number += 1
  end
  puts prime_numbers
end

number = ARGV[0].to_i

number = 10 if number.zero?

first_prime_numbers(number)
