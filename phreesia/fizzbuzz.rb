require_relative 'fizzbuzz_impl'
Dir["./printers/*.rb"].each { |file| require file }


max = max_validator(ARGV[0])

case ARGV[1]
when nil
  printer = BasicPrinter.new
when 'fizzbuzzprinter'
  printer = FizzBuzzPrinter.new(ARGV[2], ARGV[3])
end

fizzbuzz(max, printer)
