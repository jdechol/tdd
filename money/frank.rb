require './money/money'

class Frank < Money
  def times(multiplier)
    Frank.new(@amount * multiplier)
  end
end
