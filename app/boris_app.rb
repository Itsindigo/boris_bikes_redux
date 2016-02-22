ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative 'data_mapper_setup.rb'

class BorisApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/create_station' do
    erb :create_station
  end

  post '/create_station' do
    BorisStation.create(dock_name: params[:dock_name],
                        capacity: params[:capacity])
    redirect '/'
  end

  get '/select_station' do
    @docking_stations = BorisStation.all
    erb :select_station
  end

  get '/release_bike' do
    erb :release_bike
  end

  run! if app_file == $0
end
