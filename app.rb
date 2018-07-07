require 'prototyping_kit'

class App < PrototypingKit::App
  # The following line imports examples of design patterns, available in the
  # app at `/patterns`. Remove or comment it out to disable.
  #
  include PrototypingKit::Patterns

  get "/" do
    erb :index
  end
end
