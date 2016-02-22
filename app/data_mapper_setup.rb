require 'data_mapper'
require 'dm-postgres-adapter'
require './app/models/boris_bike.rb'
require './app/models/boris_station.rb'
require './app/models/boris_user.rb'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/boris_bike_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
