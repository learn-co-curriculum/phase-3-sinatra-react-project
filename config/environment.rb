ENV["SINATRA_ENV"] ||= "development"

# require "dotenv/load"
require "bundler/setup"
Bundler.require(:default, ENV["SINATRA_ENV"])

# set :database, {adapter: "sqlite3", database: "db/#{ENV["SINATRA_ENV"]}.sqlite"}
set :database_file, "./database.yml"

require_all "app"