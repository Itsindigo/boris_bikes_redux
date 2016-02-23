require 'data_mapper'
require 'dm-postgres-adapter'

class BorisBike

  include DataMapper::Resource

  property :id,         Serial
  property :working?,   Boolean,      :default => true
  property :docked?,    Boolean,      :default => true

  belongs_to :BorisStation


end
