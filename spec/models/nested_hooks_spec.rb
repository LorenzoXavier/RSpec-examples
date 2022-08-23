RSpec.describe 'Nested hooks' do
  # try to work out how this works logically
  # run the RSpec and you'll see how the code is worked through, going through the top level first and then climbing in and out of the nested...
  # '...with conditon a, and going back and down the ladder depending on what is run'

  before(:context) do
    puts 'OUTER before context'
  end

  before(:example) do
    puts 'OUTER before example'
  end

  it 'Does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER before context'
    end

    before(:example) do
      puts 'INNER before example'
    end

    it 'Does some more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'Does subtraction as well' do
      expect(2 - 1).to eq(1)
    end
  end

end
