class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    users = User.find(params[:id])
    users.to_json(include: :tasks)
  end

  get "/tasks" do
    tasks = Task.all
    tasks.to_json
  end

  get "/tasks/:id" do
    task = Task.find(params[:id])
    task.to_json
  end


  post '/tasks' do
    task = Task.create(
      title: params[:title],
      description: params[:description],
      category: params[:category],
      user_id: 1
    )
    task.to_json
  end

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(
      title: params[:title],
      description: params[:description],
      category: params[:category]
    )
    task.to_json
  end

  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end


end
