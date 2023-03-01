class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # GET all users
  get '/users' do
    User.all.to_json(only: [:id, :name, :image_url])
  end
  # GET a specific user by ID
  get '/users/:id' do |id|
    user = User.find_by(id: id)
    if user
      user.to_json(only: [:id, :name, :image_url])
    else
      status 404
    end
  end
  # CREATE a new user
  post '/users' do
    user_data = JSON.parse(request.body.read)
    new_user = User.create(name: user_data['name'], image_url: user_data['image_url'])
    status 201
    new_user.to_json(only: [:id, :name, :image_url])
  end
  # UPDATE an existing user by ID
  patch '/users/:id' do |id|
    user = User.find_by(id: id)
    if user
      user_data = JSON.parse(request.body.read)
      user.update(name: user_data['name'], image_url: user_data['image_url'])
      user.to_json(only: [:id, :name, :image_url])
    else
      status 404
    end
  end
  # DELETE a user by ID
  delete '/users/:id' do |id|
    user = User.find_by(id: id)
    if user
      user.destroy
      status 204
    else
      status 404
    end
  end
  # Get all todos
  get "/todos" do
    todos = Todo.all
    todos.to_json
  end
# Get one todo
  get "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.to_json
  end
  #get by prority
  get "/todos/p/:priority" do
    todo = Todo.where(priority: params[:priority])
    todo.to_json
  end
#create todo
  post '/todos' do
    todo = Todo.create(
      title: params[:title],
      description: params[:description],
      category: params[:category],
      priority: params[:priority],
      user_id: params[:user_id]
    )
    todo.to_json
  end
#update todo
  patch '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.update(
      title: params[:title],
      description: params[:description],
      category: params[:category],
      priority: params[:priority],
      user_id: params[:user_id]
    )
    todo.to_json
  end
#delete todo
  delete '/todos/:id' do
   todo = Todo.find(params[:id])
   msg ="Todo titled: '#{todo.title}' was deleted"
  todo.destroy
  { message: msg  }.to_json
  end

end
