class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  post "/todos" do
    todo = Todo.create(item: params[:item], 
      importance: params[:importance], 
      category_id: params[:category_id])
    todo.to_json(include: { category: {only: [:category]} })
  end
  
  # get "/todos" do
  #   todos = Todo.all.order(:category_id)
  #   todos.to_json(include: { category: {only: [:category]} })
  # end

  get "/todos" do
    todos = Todo.all.all_importance
    todos.to_json
    todos.to_json(include: { category: {only: [:category]} })
  end

  get "/todos-low" do
    todos = Todo.filter_importance('low')
    todos.to_json(include: { category: {only: [:category]} })
  end

  get "/todos-medium" do
    todos = Todo.filter_importance('medium')
    todos.to_json(include: { category: {only: [:category]} })
  end

  get "/todos-high" do
    todos = Todo.filter_importance('high')
    todos.to_json(include: { category: {only: [:category]} })
  end

  patch "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.update(item: params[:item],
      importance: params[:importance],
      category_id: params[:category_id]
    )
    todo.to_json(include: { category: {only: [:category]} })
  end

  delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end

  get "/todos/:id" do
    todos = Todo.find(params[:id])
    todos.to_json
  end

  get "/todos-alphabetical" do
    todos = Todo.all_items
    todos.to_json(include: { category: {only: [:category]} })
  end

  get "/categories" do
    categories = Category.all
    categories.to_json
  end

end
