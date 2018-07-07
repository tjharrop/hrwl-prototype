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
          session['data'] || {}
        end
      end

      before do
        if params.any?
          session['data'] = (session['data'] || {}).merge(params)
          # p params
        end
      end

      get '/reset-data' do
        session['data'] = {}
        redirect '/'
      end
    end
  end
end
