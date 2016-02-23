require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'boris_bike.rb'
require_relative 'boris_user.rb'

class BorisStation
  include DataMapper::Resource

  has n, :BorisBikes

  property :id,          Serial
  property :bikes,       Integer
  property :dock_name,   String
  property :capacity,    Integer


  def load_station
    @capacity.times do |create_bike|
      @bikes << BorisBike.new
    end
  end

  def bike_to_release?
    if @bikes.length > 0
      true
    else
      false
    end
  end

  def release_bike(user)
    if bike_to_release? == true
      bike = @bikes.pop
      user.current_bike = bike
      user.has_bike = true
    end
  end
end
