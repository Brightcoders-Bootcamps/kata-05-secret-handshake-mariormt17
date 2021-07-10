# frozen_string_literal: true

require_relative '../src/secret_handshake'

RSpec.describe SecretHandshake do
  it 'right attributes initialization' do
    test_handshake = SecretHandshake.new(0)
    expect(test_handshake.code).to eq([])
  end

  describe '#code' do
    it 'test right code with binary number 1' do
      test_handshake = SecretHandshake.new(1)
      expect(test_handshake.code).to eq(['wink'])
    end

    it 'test right code with binary number 10' do
      test_handshake = SecretHandshake.new(2)
      expect(test_handshake.code).to eq(['double blink'])
    end

    it 'test right code with binary number 100' do
      test_handshake = SecretHandshake.new(4)
      expect(test_handshake.code).to eq(['close your eyes'])
    end

    it 'test right code with binary number 1000' do
      test_handshake = SecretHandshake.new(8)
      expect(test_handshake.code).to eq(['jump'])
    end

    it 'test right code with decimal number 11' do
      test_handshake = SecretHandshake.new(3)
      expect(test_handshake.code).to eq(['wink', 'double blink'])
    end

    it 'test right code with decimal number 19' do
      test_handshake = SecretHandshake.new(19)
      expect(test_handshake.code).to eq(['double blink', 'wink'])
    end

    it 'test right code with decimal number 31' do
      test_handshake = SecretHandshake.new(31)
      expect(test_handshake.code).to eq(['jump', 'close your eyes', 'double blink', 'wink'])
    end

    it 'test right code with decimal number 15' do
      test_handshake = SecretHandshake.new(15)
      expect(test_handshake.code).to eq(['wink', 'double blink', 'close your eyes', 'jump'])
    end
  end
end
