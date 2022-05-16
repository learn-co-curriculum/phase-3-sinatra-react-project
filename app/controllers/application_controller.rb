class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
  get '/tasks' do
    tasks = Task.all
    tasks.to_json
  end

  get '/tasks/superhero' do
    superhero_tasks = List.first.tasks
    superhero_tasks.to_json
  end

  get '/tasks/alterego' do
    alterego_tasks = List.second.tasks
    alterego_tasks.to_json
  end



end
