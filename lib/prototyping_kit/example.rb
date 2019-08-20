module PrototypingKit
  module Example
    extend ActiveSupport::Concern

    included do
      get '/example/start' do
        render_internal_view 'example', :start
      end

      get '/example/step-1' do
        render_internal_view 'example', :step_1
      end

      get '/example/step-2' do
        render_internal_view 'example', :step_2
      end

      get '/example/step-3' do
        render_internal_view 'example', :step_3
      end

      get '/example/step-4' do
        render_internal_view 'example', :step_4
      end

      get '/example/step-5' do
        render_internal_view 'example', :step_5
      end

      get '/example/submitted' do
        render_internal_view 'example', :submitted
      end
    end
  end
end
