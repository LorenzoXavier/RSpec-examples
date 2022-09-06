# frozen_string_literal: true

# Checks that array includes certain pre defined elements.
# It isn't concerned if it is in a particular order, just that all excist
RSpec.describe 'contain_exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 2, 1)
      expect(subject).to contain_exactly(3, 1, 2)

      expect(subject).not_to contain_exactly(3, 1, 2, 4, 5)
    end
  end

  # shortened syntax
  describe 'short form syntax' do
    it { is_expected.to contain_exactly(1, 2, 3) }
  end
end
