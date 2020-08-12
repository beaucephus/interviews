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
  max_allowed = 100
  begin
    candidate = Integer(input)

    oob = candidate < 1 || candidate > max_allowed
    raise "Max count must be an integer between 1 and #{max_allowed}" if oob

    candidate
  rescue ArgumentError, TypeError
    raise "Failed to convert input to integer. Please provide an integer input."
  end
end
