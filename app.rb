require 'sinatra/base'
require 'sprockets'
require 'uglifier'
require 'sass'
require 'digital_nsw_template'

class PrototypingKit < Sinatra::Base
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

  get "/" do
    erb :index
  end

  get '/patterns' do
    erb 'patterns/index'.to_sym
  end

  get '/patterns/:page' do |page|
    if File.exists?("views/patterns/#{page}.erb")
      erb "patterns/#{page}".to_sym
    else
      head 404
    end
  end
end
