require 'data_mapper'
require 'dm-postgres-adapter'

class BorisUser
  include DataMapper::Resource
  
  property :id,     Serial

end
