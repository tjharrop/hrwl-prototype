module PrototypingKit
  module Patterns
    extend ActiveSupport::Concern

    def patterns_view_path
      File.join( File.dirname(__FILE__), 'views', 'patterns')
    end

    def render_pattern_view(view)
      erb(
        view.to_sym,
        views: patterns_view_path,
        layout_options: {
          views: settings.views,
        }
      )
    end

    included do
      get '/patterns' do
        render_pattern_view :index
      end

      get '/patterns/:page' do |page|
        view = page.underscore

        if File.exists?(File.join(patterns_view_path, "#{view}.erb"))
          render_pattern_view view
        else
          head 404
        end
      end
    end
  end
end
