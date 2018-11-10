require_relative '../../money/money'
require_relative '../../money/dollar'
require_relative '../../money/franc'

describe 'money' do
  describe 'multiplication' do
    it 'multiplies correctly' do
      five = Money.dollar(5)
      expect(five.times(2)).to eq Dollar.new(10)
      expect(five.times(3)).to eq Dollar.new(15)
    end
  end

  describe 'equality' do
    describe 'same currency' do
      context 'when the amounts are equal' do
        it 'returns equal' do
          expect(Money.dollar(5)).to eq Money.dollar(5)
        end
      end

      context 'when the amounts are not equal' do
        it 'returns not equal' do
          expect(Money.dollar(5)).to_not eq Money.dollar(6)
        end
      end
    end

    describe 'different currencies' do
      it 'returns not equal' do
        expect(Money.dollar(5)).to_not eq Money.franc(5)
        expect(Money.dollar(5)).to_not eq Money.franc(6)
      end
    end
  end
end
