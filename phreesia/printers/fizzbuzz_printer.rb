class FizzBuzzPrinter < Printer
  def initialize(fizz_string, buzz_string)
    @fizz_string = fizz_string
    @buzz_string = buzz_string
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
end
