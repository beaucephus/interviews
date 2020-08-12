class FizzBuzzPrinter < Printer
  def initialize(fizz_input = nil, buzz_input = nil)
    @fizz_string = fizz_validator(fizz_input)
    @buzz_string = buzz_validator(buzz_input)
  end

  def print(n)
    if n.modulo(15) == 0
      puts "#{@fizz_string}#{@buzz_string}"
    elsif n.modulo(3) == 0
      puts @fizz_string
    elsif n.modulo(5) == 0
      puts @buzz_string
    else
      puts n
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
end
