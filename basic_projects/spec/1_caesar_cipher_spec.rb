require_relative '../1_caesar_cipher'
describe "#caesar_cipher" do
  context 'works with words regardless of punctuation' do
    it 'step equals 5, string "What a string"' do
      expect(caesar_cipher('What a string', 5)).to eq('Bmfy f xywnsl')
    end
    it 'step missing, string "Zorro"' do
      expect(caesar_cipher('Zorro')).to eq('Apssp')
    end
  end
  context 'works with punctuation' do
    it 'step equals 5, string "What, a, string"' do
      expect(caesar_cipher('What, a, string', 5)).to eq('Bmfy, f, xywnsl')
    end
    it 'step missing, string "Zorro!"' do
      expect(caesar_cipher('Zorro!')).to eq('Apssp!')
    end
  end
end

describe "#caesar_decipher" do
  context 'works with words regardless of punctuation' do
    it 'step equals 5, string "Bmfy f xywnsl"' do
      expect(caesar_decipher('Bmfy f xywnsl', 5)).to eq('What a string')
    end
    it 'step missing, string "Apssp"' do
      expect(caesar_decipher('Apssp')).to eq('Zorro')
    end
  end
  context 'works with punctuation' do
    it 'step equals 5, string "Bmfy, f, xywnsl"' do
      expect(caesar_decipher('Bmfy, f, xywnsl', 5)).to eq('What, a, string')
    end
    it 'step missing, string "Apssp!"' do
      expect(caesar_decipher('Apssp!')).to eq('Zorro!')
    end
  end
end