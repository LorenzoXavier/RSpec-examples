# frozen_string_literal: true

RSpec.describe 'before and after hooks' do
  before(:example) do # run before each example
    puts 'Before example'
  end

  after(:example) do # run after each example
    puts 'after example'
  end

  before(:context) do # run one time only, before all of the examples in a group
    puts 'Before context'
  end

  after(:context) do # run one time only, after all of the examples in a group
    puts 'after context'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just a anothe random example' do
    expect(3 - 2).to eq(1)
  end
end
