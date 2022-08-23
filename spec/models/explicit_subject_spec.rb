RSpec.describe Hash do

  # the advantage of using subject over
  # let(:bob) { a:1, b:2 }
  # is that it gives you access to RSpec syntax that we will get onto later in the training
  subject(:bob) do
    { a:1, b:2 }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end

end
