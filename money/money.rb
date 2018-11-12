class Money
  def initialize(amount)
    @amount = amount
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

  def ==(other)
    self.class == other.class && amount == other.amount
  end

  protected

  attr_reader :amount
end

class Dollar < Money
  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end
end

class Franc < Money
  def times(multiplier)
    Franc.new(@amount * multiplier)
  end
end
