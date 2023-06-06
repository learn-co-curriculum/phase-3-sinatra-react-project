# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['RACK_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

# Require in all files in 'app' directory
require_all 'app'



# configure :development do
#     ActiveRecord::Base.establish_connection(
#     :adapter => "sqlite3",
#     :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
#   )
#   end
  
#   configure :production do
#     db = URI.parse(ENV['HEROKU_POSTGRESQL_COBALT_URL'] || 'postgres://localhost/mydb')
  
#     ActiveRecord::Base.establish_connection(
#       :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
#       :host     => db.host,
#       :username => db.user,
#       :password => db.password,
#       :database => db.path[1..-1],
#       :encoding => 'utf8'
#     )
#   end