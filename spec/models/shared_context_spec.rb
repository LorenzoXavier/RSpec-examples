# frozen_string_literal: true

# defining a shared helper. This can be done outside the individual spec file and used globally by including it within your test (as shown further down)
RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

# if you include_context the shared_context, you have access to the code within. In this case 'common'
RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variable' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end

  it 'can use shared let varaibles' do
    expect(some_variable).to eq([1, 2, 3])
  end
end
