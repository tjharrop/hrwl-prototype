require 'prototyping_kit'

class App < PrototypingKit::App
  # The following line imports examples of design patterns, available in the
  # app at `/patterns`. Remove or comment it out to disable.
  #
  include PrototypingKit::Patterns

  # This includes an example flow. You can see the code and views for this
  # example in the following files:
  #
  # - lib/prototyping_kit/example.rb
  # - lib/prototyping_kit/views/example/
  #
  include PrototypingKit::Example
  include PrototypingKit::Assessor
  include PrototypingKit::Nirvana

  get "/" do
    erb :index
  end
end
