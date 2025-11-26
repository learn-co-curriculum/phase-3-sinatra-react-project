load "active_record/railties/databases.rake"
require "sinatra/activerecord/rake/activerecord_#{ActiveRecord::VERSION::MAJOR}"

load "sinatra/activerecord/tasks.rake"

ActiveRecord::Base.logger = nil
