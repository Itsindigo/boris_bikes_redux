ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative 'data_mapper_setup.rb'

class BorisApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/station' do
    @docking_stations = BorisStation.all
    erb :station
  end

  get '/station/:station' do
    BorisStation.find(dock_name: params[:station])
    @bs = BorisStation.first(dock_name: params[:station])
    erb :selected_station
  end


  get '/create_station' do
    erb :create_station
  end

  post '/create_station' do
    BorisStation.create(dock_name: params[:dock_name],
                        capacity: params[:capacity],
                        bikes: params[:capacity])
    redirect '/'
  end

  post '/create_bike' do
    BorisBike.create

    redirect '/'
  end

  get '/release_bike' do
    erb :release_bike
  end

  run! if app_file == $0
end
