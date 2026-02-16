require_relative '../2_sub_strings'
describe '#substrings' do
  context 'returns a hash of substrings, listing each substring that was found in original string' do
    dictionary = %w[below down go going horn how howdy it i low own part partner sit]
    it "below => {'below' => 1, 'low' => 1}" do
      expect(substrings('below', dictionary)).to eq({ 'below' => 1, 'low' => 1 })
    end
    context 'works with multiple words' do
      it "Howdy partner, sit down! How's it going? " do
        expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 } )
      end
    end
  end
end
