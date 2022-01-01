class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/todos" do
    todos = Todo.all
    todos.to_json(include: { category: {only: [:category]} })
  end

  get "/todos/:id" do
    todos = Todo.find(params[:id])
    todos.to_json
  end

  post "/todos" do
    todo = Todo.create(item: params[:item], 
      importance: params[:importance], 
      category_id: params[:category_id])
    todo.to_json(include: { category: {only: [:category]} })
  end

  delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end

end
