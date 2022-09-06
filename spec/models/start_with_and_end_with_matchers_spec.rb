# frozen_string_literal: true

RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')

      # ruby does care about case, so you must manipulate data if you're worried about case, e.g

      expect(subject.upcase).to start_with('CAT')
      expect(subject.capitalize).to start_with('Cat')
    end
  end

  describe [:a, :b, :c, :d] do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)
      expect(subject).to end_with(:c, :d)
      expect(subject).to end_with(:d)
    end
  end
end
