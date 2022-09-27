class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love you, baby'
  end

  def fall_off_ladder
    'Call my agent! No way!'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

# actor = Actor.new("Brad Pitt")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) do
    double('Mr Danger',
           { ready?: true, act: 'sure lets go', fall_off_ladder: 'Sure, lets get into it', light_on_fire: true })
  end

  subject { described_class.new(stuntman) }

  describe 'start_shooting method' do
    it 'Expects the actor to do 3 commands' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:fall_off_ladder)
      expect(stuntman).to receive(:light_on_fire)
      subject.start_shooting
    end
  end
end
