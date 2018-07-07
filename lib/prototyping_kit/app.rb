require 'prototyping_kit/assets'
require 'prototyping_kit/example'
require 'prototyping_kit/patterns'
require 'prototyping_kit/storage'

module PrototypingKit
  class App < Sinatra::Base
    set :root, File.expand_path('../../../', __FILE__)

    include PrototypingKit::Assets
    include PrototypingKit::Storage

    def internal_view_path(directory)
      File.join( File.dirname(__FILE__), 'views', directory)
    end

    def render_internal_view(directory, view)
      erb(
        view.to_sym,
        views: internal_view_path(directory),
        layout_options: {
          views: settings.views,
        }
      )
    end
  end
end
