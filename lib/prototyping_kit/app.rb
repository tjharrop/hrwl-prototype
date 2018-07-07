require 'prototyping_kit/assets'
require 'prototyping_kit/patterns'

module PrototypingKit
  class App < Sinatra::Base
    set :root, File.expand_path('../../../', __FILE__)

    include PrototypingKit::Assets
  end
end
