module PrototypingKit
  module Assessor
    extend ActiveSupport::Concern

    included do
      get '/assessor/start' do
        render_internal_view 'assessor', :start
      end

      get '/assessor/step-1' do
        render_internal_view 'assessor', :step_1
      end

      get '/assessor/step-2' do
        render_internal_view 'assessor', :step_2
      end

      get '/assessor/step-3' do
        render_internal_view 'assessor', :step_3
      end

      get '/assessor/step-4' do
        render_internal_view 'assessor', :step_4
      end

      get '/assessor/step-5' do
        render_internal_view 'assessor', :step_5
      end

      get '/assessor/step-6' do
        render_internal_view 'assessor', :step_6
      end

      get '/assessor/step-6b' do
        render_internal_view 'assessor', :step_6b
      end

      get '/assessor/step-7' do
        render_internal_view 'assessor', :step_7
      end

      get '/assessor/step-8' do
        render_internal_view 'assessor', :step_8
      end

      get '/assessor/step-9' do
        render_internal_view 'assessor', :step_9
      end

      get '/assessor/step-10' do
        render_internal_view 'assessor', :step_10
      end

    end
  end
end
