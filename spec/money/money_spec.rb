require './money/money'
require './money/dollar'
require './money/frank'

describe 'money' do
  describe 'equality' do
    describe 'same currency' do
      context 'when the amounts are equal' do
        it 'returns equal' do
          expect(Money.new(5)).to eq Money.new(5)
        end
      end

      context 'when the amounts are not equal' do
        it 'returns not equal' do
          expect(Money.new(5)).to_not eq Money.new(6)
        end
      end
    end

    describe 'different currencies' do
      it 'returns not equal' do
        expect(Dollar.new(5)).to_not eq Frank.new(5)
      end
    end
  end
end
