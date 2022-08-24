RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  # it is_expected will only work on subject, not a let(:name)
  context 'with on-liner syntax' do
    it { is_expected.to eq(5) }
  end
end
