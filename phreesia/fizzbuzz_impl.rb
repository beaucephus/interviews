Dir["./printers/*.rb"].each { |file| require file }

def fizzbuzz(maxnum, printer)
  (1..maxnum.to_i).each do |n|
    Printer.new.print(n, printer)
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
