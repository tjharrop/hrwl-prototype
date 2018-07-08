module PrototypingKit
  module Storage
    extend ActiveSupport::Concern

    included do
      use Rack::Session::Cookie, :key => 'rack.session',
                             :domain => 'localhost',
                             :path => '/',
                             :expire_after => 2592000, # In seconds
                             :secret => 'change_me'

      helpers do
        def data
          session['data'].with_indifferent_access
        end
      end

      before do
        session['data'] ||= {}

        if params.any?
          session['data'] = session['data'].merge(params)
        end
      end

      get '/reset-data' do
        session['data'] = {}
        redirect '/'
      end
    end
  end
end
