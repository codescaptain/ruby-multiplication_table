require 'byebug'

def multiplication_table(param)
  prime_numbers = []
  # prime number start from 2
  number = 2

  while prime_numbers.length < param
    next if number < 2
    # The divisors of prime dimensions can be limited by a limit up to the square root value.
    result = 1

    2.upto(Math.sqrt(number).to_i) do |index|
      # TODO if number is 10 and index 3, result'll be 1. 10 is nat a prime number
      return false if (number % index).zero?
      prime_numbers << number
    end

    number += 1
  end
  puts prime_numbers
end

number = ARGV[0].to_i

number = 10 if number.zero?

multiplication_table(number)
