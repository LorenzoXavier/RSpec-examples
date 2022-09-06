# frozen_string_literal: true

class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    # initializes with a predefined name of 'Ruby', unless you declare a different name
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no initialization argument' do
    # you can change the value of the langauge with following line. This will only run within the scope of this context block
    # comment out next line to see this in action
    let(:language) { ProgrammingLanguage.new }
    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end
