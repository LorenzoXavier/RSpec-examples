require 'rails_helper'

# if you reference the class - rather than a string - it will create a connection and put helper settings in place automatically
# meaning line is refactored instead of reading RSpec.decribe 'Card' do


RSpec.describe Card do
  before do
    @card = Card.new('Ace', 'Spades')
  end

  it 'has a rank' do
    expect(@card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(@card.suit).to eq('Spades')
  end
end
