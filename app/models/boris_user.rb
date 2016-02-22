require 'data_mapper'
require 'dm-postgres-adapter'

class BorisUser
  include DataMapper::Resource

  property :id,           Serial
  property :has_bike,     Boolean
  property :current_bike, Boolean

  def initialize
    @has_bike = false
    @current_bike = nil
  end

end
