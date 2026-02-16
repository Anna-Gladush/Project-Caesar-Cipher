require_relative '../3_stock_picker'
describe '#stock_picker' do
  context 'return a pair of days representing the best day to buy and the best day to sell' do
    it 'returns the lowest first day, and the highest last' do
      expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
    end
    it "when it's the only one day" do
      expect(stock_picker([17])).to eq('ERROR')
    end
    it 'two days, but the last is lower than first' do
      expect(stock_picker([17, 5])).to eq('ERROR')
    end
    it 'the last day is lowest, the first day is highest' do
      expect(stock_picker([9, 2, 2, 2, 1])).to eq([1,3])
    end
  end
end
