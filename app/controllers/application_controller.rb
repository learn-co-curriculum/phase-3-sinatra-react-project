class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/tasks" do
    tasks = Task.all
    tasks.to_json
  end

  get "/tasks/:id" do
    task = Task.find(params[:id])
    task.to_json
  end

  post '/tasks' do
    task_to_add = Task.create(
      description: params[:description],
      category_id: params[:category_id],
      day_id: params[:day_id]
    )
    task_to_add.to_json
  end

  patch '/tasks/:id' do
    task_to_update = Task.find(params[:id])
    task_to_update.update(description: params[:description], category_id: params[:category_id, :day_id])
  end

  delete 'tasks/:id' do
    task_to_delete = Task.find(params[:id])
    task_to_delete.delete
  end

  get '/categories' do
    category = Category.all
    category.to_json
  end

  get '/categories/:id' do
    category = Category.find(params[:id])
    category.to_json
  end

  post '/categories' do
    category_to_add = Category.create(
      urgent: params[:urgent],
      day_id: params[:day_id],
      task_id: params[:task_id]
    )
    category_to_add.to_json
  end

  patch '/categories/:id' do
    category_to_update.update(urgent: params[:urgent], day_id: params[:day_id, task_id: params[:task_id])
  end

  delete '/categories/:id' do
    category_to_delete = Category.find(params[:id])
    category_to_delete.delete
  end

end
