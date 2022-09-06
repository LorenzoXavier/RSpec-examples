# frozen_string_literal: true

RSpec.describe '#even? method' do
  # this will nest the describe blocks below
  describe 'with even number' do
    it 'Should return true' do
      expect(4.even?).to eq(true)
    end
  end

  describe 'with odd number' do
    it 'Should return false' do
      expect(5.even?).to eq(false)
    end
  end
end

RSpec.describe '#even? method' do
  # context is an alias of decribe - works the same way. It is just to read symantically better
  context 'with even number' do
    it 'Should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'Should return false' do
      expect(5.even?).to eq(false)
    end
  end
end
