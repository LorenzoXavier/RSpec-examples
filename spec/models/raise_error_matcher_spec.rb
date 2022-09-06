# frozen_string_literal: true

RSpec.describe 'raise_error matcher' do
  # specifically not defining x in following method
  def some_method
    x
  end

  # we are expecting the some_method method to have a name error as we haven't defined x
  # passing the argument of NameError (an object based class built into ruby)
  # list of error exceptions -
  # https://ruby-doc.org/core-2.5.1/Exception.html
  it 'can check for a specific error' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  # defining a sub class that inherits from rubys standard error class
  class CustomError < StandardError
  end

  # this raises and then checks it has raised the custom error class above, that inherits from StandardError
  it 'can check for a user-created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
