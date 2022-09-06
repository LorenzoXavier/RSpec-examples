require 'rails_helper'

# if you reference the class - rather than a string - it will create a connection and put helper settings in place automatically
# meaning line is refactored instead of reading RSpec.decribe 'Card' do

RSpec.describe 'Card - Instance varaible method using before' do
  # in this case, the before block runs before every example below
  # Using the before method makes the test very heavy, as it will run before every task in the RSpec block
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

RSpec.describe 'Creating card using card method' do
  # This will create a brand new card object everytime the card method is called
  def card
    Card.new('Ace', 'Spades')
  end

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end

RSpec.describe 'Creating card using the Let helper method' do
  # working on mutating state by changing rank to 'Queen'
  # The let helper method is the way to achieve this
  # Let takes an argument of a symbol, to reference you do not need the : symbol
  # Advantage of let:
  # 1) between different examples, block will be evaluated each time seperatley - not using memoization (Computer Science)
  # 2) Let solves the problem of creating a brand new object every time card is called - which means it will assign it to a variable within the block, meaning you can alter attributes
  #  3) Uses lazy loading.
  # if you put a bang ! on let, it will run it like the before method - which will run before every task:
  # let!(:card) { Card.new('Ace', 'Spades') }

  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank and the rank can change and mutating' do
    expect(card.rank).to eq('Ace')
    puts "Card rank is #{card.rank}"
    card.rank = 'Queen'
    puts "Card rank has been changed to #{card.rank}"
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end

RSpec.describe 'Custom error message' do


  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank and the rank can change and mutating' do
    expect(card.rank).to eq('Ace')
    puts "Card rank is #{card.rank}"
    card.rank = 'Queen'
    puts "Card rank has been changed to #{card.rank}"
    expect(card.rank).to eq('Queen')
  end

  it 'is not nil' do
    expect(card) != nil
  end

  # Providing a second argument of a string with custome error message
  it 'has a custom error message' do
    comparison = 'Spade'
    expect(card.suit).to eq(card.suit), "I expected '#{comparison}', but I got '#{card.suit}' instead"
  end
end



