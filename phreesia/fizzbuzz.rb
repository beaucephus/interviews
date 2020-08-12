require_relative 'fizzbuzz_impl'

max = max_validator(ARGV[0])
fizz_string = fizz_validator(ARGV[1])
buzz_string = buzz_validator(ARGV[2])

fizzbuzz(max, fizz_string, buzz_string)
