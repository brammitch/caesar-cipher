require_relative '../lib/caesar_cipher'

describe 'Caesar Cipher' do
  describe 'caesar cipher' do
    it 'shifts lower case letters to the right' do
      expect(caesar_cipher('a', 3)).to eq('d')
    end

    it 'shifts lower case letters to the left' do
      expect(caesar_cipher('a', -3)).to eq('x')
    end

    it 'shifts upper case letters to the right' do
      expect(caesar_cipher('A', 3)).to eq('D')
    end

    it 'shifts upper case letters to the left' do
      expect(caesar_cipher('A', -3)).to eq('X')
    end

    it 'ignores non-letter characters' do
      expect(caesar_cipher('What a string! I give it 10 out of 10. A++ would cipher again!',
                           11)).to eq('Hsle l dectyr! T rtgp te 10 zfe zq 10. L++ hzfwo ntaspc lrlty!')
    end

    it 'works with every letter of the alphabet' do
      expect(caesar_cipher('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 23)).to eq('XYZABCDEFGHIJKLMNOPQRSTUVW')
    end
  end
end
