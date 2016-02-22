require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'boris_bike.rb'

class BorisStation
  include DataMapper::Resource

  has n, :BorisBikes, through: Resource

  property :id,          Serial
  property :bikes,       Serial
  property :dock_name,   String
  property :capacity,    Integer

  def initialize(capacity=20, dock_name)
    @capacity = capacity
    @dock_name = dock_name
    @bikes = []
  end

  def load_station
    @capacity.times do |create_bike|
      @bikes << BorisBike.new
    end
  end
end
