require_relative '../4_bubble_sort'
describe '#bubble_sort' do
  context 'takes an array and returns a sorted array' do
    it 'return [0, 2, 2, 3, 4, 78]' do
      expect(bubble_sort([4,3,78,2,0,2])).to eq([0, 2, 2, 3, 4, 78])
    end
    it 'works with long arrays' do
      expect(bubble_sort([4,3,78,2,0,2,100,1,3,5,3,6,0,9])).to eq([0, 0, 1, 2, 2, 3, 3, 3, 4, 5, 6, 9, 78, 100])
    end
  end
end
