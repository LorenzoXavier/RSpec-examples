class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
#  described_class is referenceing whatever class is under test (in this case King)
# This means you do not have to change all the occurances on the class calls, as this approach is dynamic - making it dynamic if you make changes
RSpec.describe King do
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end
