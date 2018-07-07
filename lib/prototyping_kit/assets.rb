require 'active_support/concern'
require 'sprockets'
require 'uglifier'
require 'sass'
require 'digital_nsw_template'

module PrototypingKit
  module Assets
    extend ActiveSupport::Concern

    included do
      set :environment, Sprockets::Environment.new

      environment.append_path "assets/stylesheets"
      environment.append_path "assets/javascripts"
      environment.append_path "assets/images"

      environment.js_compressor  = :uglify
      environment.css_compressor = :scss

      get "/assets/*" do
        env["PATH_INFO"].sub!("/assets", "")
        settings.environment.call(env)
      end
    end
  end
end
