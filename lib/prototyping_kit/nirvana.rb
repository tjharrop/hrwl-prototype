module PrototypingKit
  module Nirvana
    extend ActiveSupport::Concern

    included do
      get '/nirvana/start' do
        render_internal_view 'nirvana', :start
      end

    end
  end
end
