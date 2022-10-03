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

  get "/tasks/:id" do

    task = Task.find(params[:id])
    task.to_json
  end

 post "/tasks" do
  task = Task.create(name: params[:name], user_id: params[:user_id], category_id: params[:category_id], priority: params[:priority], completed?: params[:completed?])
  task.to_json 
end 

patch '/tasks/:id' do
  task = Task.find(params[:id])
  task.update(name: params[:name], priority: params[:priority], completed?: params[:completed?] )
  task.to_json
end

delete '/tasks/:id' do
  task = Task.find(params[:id])
  task.destroy
  task.to_json
end

post '/users' do
  user = User.create(first_name: params[:first_name], last_name: params[:last_name])
  user.to_json
end
end
