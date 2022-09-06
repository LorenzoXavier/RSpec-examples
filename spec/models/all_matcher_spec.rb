# frozen_string_literal: true

RSpec.describe 'all matcher' do
  # see line 8 for a shortened version using RSpec magic
  it 'allows for aggregate checks' do
    [5, 7, 9].each do |val|
      expect(val).to be_odd
    end
  end
  describe 'allows for aggregate checks - shortened syntax' do
    it { expect([5, 7, 9]).to all(be_odd) }
  end
end
