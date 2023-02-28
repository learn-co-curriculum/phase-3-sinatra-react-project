source "https://rubygems.org"

# A DSL for quickly creating web applications
# https://github.com/sinatra/sinatra
gem "sinatra"

# A fast and simple web server
# https://github.com/macournoyer/thin
gem "thin"

# Rack middleware. Used specifically for parsing the request body into params.
# https://github.com/rack/rack-contrib
gem "rack-contrib"

# More Rack middleware! Used to handle CORS requests
# https://github.com/cyu/rack-cors
gem "rack-cors"

# An object-relational mapper
# https://guides.rubyonrails.org/active_record_basics.html
gem "activerecord"

# Configures common Rake tasks for working with Active Record
# https://github.com/sinatra-activerecord/sinatra-activerecord
gem "sinatra-activerecord"

# Run common tasks from the command line
# https://github.com/ruby/rake
gem "rake"

# Provides functionality to interact with a SQLite3 database
gem "sqlite3"

# Require all files in a folder
gem "require_all"

gem 'faker'

# These gems will only be used when we are running the application locally
group :development do
  gem "pry"

  # Automatically reload when there are changes
  # https://github.com/alexch/rerun
  gem "rerun"
end

# These gems will only be used when we are running tests
group :test do
  gem "database_cleaner"
  gem "rack-test"
  gem "rspec"
  gem "rspec-json_expectations"
end
