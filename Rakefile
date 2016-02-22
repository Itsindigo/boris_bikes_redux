require 'data_mapper'
require './app/boris_app.rb'

namespace :db do
  desc "Non destructive upgrade"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Auto-upgrade complete (no data loss)"
  end

  desc "Destructive upgrade"
  task :auto_migrate do
    Datamapper.auto_migrate!
    puts "Auto-migrate complete (data was lost)"
  end
end
