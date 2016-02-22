require 'data_mapper'
require 'dm-postgres-adapter'

class BorisBike

  include DataMapper::Resource

  property :id,         Serial
  property :working?,   Boolean
  property :docked?,    Boolean


  def initialize
    @working = true
    @docked = true
  end

  def working?
    @working
  end

  def docked?
    @docked
  end
end
