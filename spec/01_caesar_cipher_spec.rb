require_relative '../01_caesar_cipher.rb'

describe CaesarCipher do

  describe '.caesar_cipher' do

    context 'when given punctuation' do
      it 'returns string without punctuation affected' do
        expect(CaesarCipher.caesar_cipher('!@$#', 4)).to eql('!@$#')
      end
    end

    context 'when lowercase letters' do
      it 'returns transferred lowercase letters' do
        expect(CaesarCipher.caesar_cipher('abcd', 2)).to eql('cdef')
      end
      it 'wraps from "z" to "a"' do
        expect(CaesarCipher.caesar_cipher('z', 1)).to eql('a')
      end
    end

    context 'when uppercase letters' do
      it 'returns transferred uppercase letters' do
        expect(CaesarCipher.caesar_cipher('ABCD', 2)).to eql('CDEF')
      end
      it 'wraps from "Z" to "A"' do
        expect(CaesarCipher.caesar_cipher('Z', 1)).to eql('A')
      end
    end

    context 'when passed digits' do
      it 'returns transferred digits' do
        expect(CaesarCipher.caesar_cipher('234', 2)).to eql('456')
      end
      it 'wraps from "0" to "1"' do
        expect(CaesarCipher.caesar_cipher('0', 1)).to eql('1')
      end
    end
  end

end
