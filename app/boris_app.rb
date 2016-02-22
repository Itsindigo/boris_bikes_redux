ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require_relative 'data_mapper_setup.rb'
require_relative 'models/boris_bike.rb'
require_relative 'models/boris_bike.rb'

class BorisApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/release_bike' do
    erb :release_bike
    
  end

  run! if app_file == $0
end
