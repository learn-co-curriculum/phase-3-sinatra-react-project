class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here - root route (basic path)
  get "/" do
    @projects = Project.all 
    @projects.to_json(include: [:tasks])
  end

end
