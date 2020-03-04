module Expression
  def qReset
    @@queue = Queue.new
  end

  def qPush(value)
    @@queue.push(value)
  end

  def qPop
    @@queue.pop
  end

  def qEmpty?
    @@queue.empty?
  end
end

class Operand
  include Expression

  def initialize(value)
    @value = value
    qPush @value
  end

  def plus
    Plus.new()
  end

  def minus
    Minus.new()
  end

  def equals
    Evaluator.new()
  end
end

class Plus
  include Expression

  def initialize()
    qPush "+"
  end

  def one
    Operand.new(1)
  end

  def two
    Operand.new(2)
  end
end

class Minus
  include Expression

  def initialize()
    qPush "-"
  end

  def one
    Operand.new(1)
  end

  def two
    Operand.new(2)
  end

  def three
    Operand.new(3)
  end
end

class Evaluator
  include Expression

  def initialize()
    total = qPop
    until qEmpty?
      case qPop
      when "+"
        total += qPop
      when "-"
        total -= qPop
      end
    end

    puts total
  end
end

include Expression
qReset
one = Operand.new(1)

one.plus.one.equals # => 2

qReset
one = Operand.new(1)

one.plus.two.minus.three.equals # => 0
