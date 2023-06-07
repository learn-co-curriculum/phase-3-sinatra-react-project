require_relative "./config/environment"
require "sinatra/activerecord/rake"
require 'json'
require 'open-uri'

desc "Start the server"
task :server do  
  if ActiveRecord::Base.connection.migration_context.needs_migration?
    puts "Migrations are pending. Make sure to run `rake db:migrate` first."
    return
  end

  # rackup -p PORT will run on the port specified (9292 by default)
  ENV["PORT"] ||= "9292"
  rackup = "rackup -p #{ENV['PORT']}"

  # rerun allows auto-reloading of server when files are updated
  # -b runs in the background (include it or binding.pry won't work)
  exec "bundle exec rerun -b '#{rackup}'"
end

desc "Start the console"
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

desc "Seeds exercise table with data from an api"
task :seed_exercises do
  exercises_url = 'https://api.api-ninjas.com/v1/exercises'
  api_key = 'xgMOkOJJiZnCyHEPyKtHCg==zN4uHBiFSGBi1ksF'

  headers = {
    'X-Api-Key' => api_key,
    'Content-Type' => 'application/json'
  }

  response = URI.open(exercises_url, headers).read
  exercises_data = JSON.parse(response)

  exercises_data.each do |exercise_data|
    Exercise.create(
      name: exercise_data['name'],
      muscle: exercise_data['muscle'],
      difficulty: exercise_data['difficulty'],
      instructions: exercise_data['instructions']
    )
  end
end