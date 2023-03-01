class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
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


  post '/todos' do
    todo = Todo.create(
      title: params[:title],
      description: params[:description],
      priority: params[:priority],
      user_id: params[:user_id]
    )
    todo.to_json
  end
  patch '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.update(
      title: params[:title],
      description: params[:description],
      priority: params[:priority],
      user_id: params[:user_id]
    )
    todo.to_json
  end

  delete '/todos/:id' do
   todo = todo.find(params[:id])
   name = todo.title
    todo.destroy
    { message: 'Todo titled: #{name} was deleted succesfully'  }.to_json
  end

end
