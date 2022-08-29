RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks that a method changes object state' do
    # using the two blocks below, when you push in a value to an array, it expects the array length to change from 3 to 4
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)

    # this does the same, but is more flexible as it is not using unique numbers
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  # shows that you can remove one element and call a negative argument on the process
  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end