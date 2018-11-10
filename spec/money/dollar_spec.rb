require './money/dollar'

describe 'dollar' do
  describe 'on init' do
    let(:five) { Dollar.new(5) }

    it 'sets the value to 5 dollars' do
      expect(five.amount).to eq 5
    end
  end

  describe '#times' do
    let(:five) { Dollar.new(5) }

    it 'returns a new object with the correct value' do
      expect(five.times(2)).to eq Dollar.new(10)
      expect(five.times(3)).to eq Dollar.new(15)
    end
  end

  describe 'equality' do
    context 'when the amounts are equal' do
      it 'returns equal' do
        expect(Dollar.new(5)).to eq Dollar.new(5)
      end
    end

    context 'when the amounts are not equal' do
      it 'returns not equal' do
        expect(Dollar.new(5)).to_not eq Dollar.new(6)
      end
    end
  end
end
