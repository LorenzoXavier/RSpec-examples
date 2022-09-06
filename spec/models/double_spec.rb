# frozen_string_literal: true

# emulating
# imagine the double() works as a stunt double - not the same but imitating
# passing a hash that defines a method and a return
RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    stuntman = double('Mr. Danger', { fall_off_ladder: 'ouch', light_on_fire: true })
    expect(stuntman.fall_off_ladder).to eq('ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end

  it 'only allows defined methods to be invoked - different syntax' do
    stuntman = double('Mr Danger')
    allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    expect(stuntman.fall_off_ladder).to eq('Ouch')
  end

  it 'only allows defined methods to be invoked - another different syntax' do
    stuntman = double('Mr Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end
