class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def ==(other)
    self.class == other.class && amount == other.amount
  end
end
