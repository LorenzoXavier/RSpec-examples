# method that returns a boolean value"
RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    result = 16/2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicated matchers' do
    # ruby under the hood takes the be (equal) and runs even? by writting be_even
    # runs the same as
    # expect((16 / 2).even?).to eq(true)
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end

