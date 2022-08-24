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

RSpec.describe Array do
  subject(:sally) do
    [ 1, 2 ]
  end

  it 'has an array, with 2 elements, using pop to remove one' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
    puts "subject after calling .pop: #{subject}"
  end

  it 'is the same as original array' do
    expect(subject).to eq(sally)
  end
end
