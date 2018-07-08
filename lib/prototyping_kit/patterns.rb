module PrototypingKit
  module Patterns
    extend ActiveSupport::Concern

    included do
      get '/patterns' do
        render_internal_view 'patterns', :index
      end

      get '/patterns/:page' do |page|
        view = page.underscore

        if File.exists?(File.join(internal_view_path('patterns'), "#{view}.erb"))
          render_internal_view 'patterns', view
        else
          head 404
        end
      end
    end
  end
end
