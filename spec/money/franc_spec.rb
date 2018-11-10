require './money/franc'

describe 'frank' do
  describe '#times' do
    let(:five) { Franc.new(5) }

    it 'returns a new object with the correct value' do
      expect(five.times(2)).to eq Franc.new(10)
      expect(five.times(3)).to eq Franc.new(15)
    end
  end

  describe 'equality' do
    context 'when the amounts are equal' do
      it 'returns equal' do
        expect(Franc.new(5)).to eq Franc.new(5)
      end
    end

    context 'when the amounts are not equal' do
      it 'returns not equal' do
        expect(Franc.new(5)).to_not eq Franc.new(6)
      end
    end
  end
end
