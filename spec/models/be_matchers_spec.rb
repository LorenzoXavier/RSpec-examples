# frozen_string_literal: true

# everything except false or nil is truthy in ruby langauge
RSpec.describe 'be matchers' do
  it 'will be truthy' do
    expect('Hello').to be_truthy
    expect(1).to be_truthy
    expect([1, 2, 3]).to be_truthy
  end

  it 'will be falsey' do
    expect(nil).to be_falsey
    expect(false).to be_falsey
  end

  it 'can test for nil' do
    expect(nil).to be_nil
    # hash entry b does not excist, therefor is nil
    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end
end
