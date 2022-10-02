class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all
    users.to_json
  end

  get "/categories" do
    categories = Category.all
    categories.to_json
  end

  get "/users/:id" do
    users = User.find(params[:id])
    users.to_json
  end

  get "/categories/:id" do

  category = Category.find(params[:id])
    category.to_json
  end

  get "/tasks" do
    task = Task.all
    task.to_json
  end


end
