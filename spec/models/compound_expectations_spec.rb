# frozen_string_literal: true

RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd
    expect(subject).to be > 20

    # following line works like && by adding .add method
    expect(subject).to be_odd.and be > 20
  end

  # shortened syntax
  describe 'can test for multiple matchers using shortened syntax' do
    it { is_expected.to be_odd and be > 20 }
  end
end

# using the or is the same as || by calling .or matcher as below
RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
  end
end
