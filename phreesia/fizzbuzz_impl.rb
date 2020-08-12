

def fizzbuzz(maxnum, fizz_string, buzz_string)
  (1..maxnum.to_i).each do |n|
    if n.modulo(15) == 0
      puts "#{fizz_string}#{buzz_string}"
    elsif n.modulo(3) == 0
      puts fizz_string
    elsif n.modulo(5) == 0
      puts buzz_string
    else
      puts n
    end
  end
end

# Returns validated input.
# Max integer to count to.
#
#
def max_validator(input)
  begin
    return 100 if input.nil? || input.empty?

    Integer(input)
  rescue ArgumentError
    raise "Failed to convert input to integer. Please provide an integer input."
  end
end

# Returns validated input.
# Fizz String.
#
#
def fizz_validator(input)
  begin
    return "fizz" if input.nil? || input.empty?

    String(input)
  rescue ArgumentError
    raise "Failed to convert Fizz input to String. Please provide a String input."
  end
end

# Returns validated input.
# Buzz String.
#
#
def buzz_validator(input)
  begin
    return "buzz" if input.nil? || input.empty?

    String(input)
  rescue ArgumentError
    raise "Failed to convert Buzz input to String. Please provide a String input."
  end
end
