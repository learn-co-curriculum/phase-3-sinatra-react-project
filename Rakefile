require_relative "./config/environment"
require "sinatra/activerecord/rake"



desc "Start the server"
task :server do
    exec 'rackup config.ru' 
end

desc "Start the console"
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end
