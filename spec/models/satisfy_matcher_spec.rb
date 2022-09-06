# frozen_string_literal: true

RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  # defining a string within parenthesis shows that string int the message when it breaks
  # the block simply compares that the value is the same forwards as backwards
  it 'is a palindrome' do
    expect(subject).to satisfy('be the same word when reversed') { |value| value.reverse == value }
  end
end
