# frozen_string_literal: true

RSpec.describe 'not to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)
    # won't be equal becuase you are calling the equal method - which considers object ID
    expect([1, 2, 3]).not_to equal([1, 2, 3])
    expect(10).not_to be_odd
    expect([1, 2, 3]).not_to be_empty

    expect(nil).not_to be_truthy

    expect('Philadelphia').not_to start_with('car')
    expect('Philadelphia').not_to end_with('city')

    expect(5).not_to respond_to(:length)

    expect(%i[a b c]).not_to include(:d)

    expect { 11 / 3 }.not_to raise_error
  end
end
