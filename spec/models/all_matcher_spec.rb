RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    [5, 7, 9].each { |val| 
      expect(val).to be_odd
    }
  end
end