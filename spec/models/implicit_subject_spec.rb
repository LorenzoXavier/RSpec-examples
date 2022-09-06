# frozen_string_literal: true

RSpec.describe Hash do
  # Subject is the equivalent of taking the class and making an object from it.
  # this means you wouldn't have to write let(:subject) { Hash.new }

  it 'should start off empty' do
    # puts subject.class
    # puts subject
    expect(subject.length).to eq(0)
  end

  it 'is a brand new hash and is isolated between examples' do
    subject[:some_key] = 'Some Value'
    expect(subject.length).to eq(1)
  end
end

RSpec.describe Array do
  it 'should be an empty array' do
    expect(subject.length).to eq(0)
  end

  it 'should now be an array with one value pushed in' do
    subject << "hello, I've been pushed into the array"
    expect(subject.length).to eq(1)
  end
end
