require_relative 'fizzbuzz_impl'
Dir["./printers/*.rb"].each { |file| require file }


max = max_validator(ARGV[0])
fizz_string = fizz_validator(ARGV[1])
buzz_string = buzz_validator(ARGV[2])

printer = BasicPrinter.new
fizzbuzz(max, printer)

printer = FizzBuzzPrinter.new(fizz_string, buzz_string)
fizzbuzz(max, printer)
