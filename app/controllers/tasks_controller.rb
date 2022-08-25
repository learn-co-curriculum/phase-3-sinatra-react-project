class TasksController < ApplicationController
    set :default_content_type, 'application/json'

    get '/tasks' do
        task = Task.all 
        task.to_json
    end

    get '/tasks/:id' do
        task = Task.find(params[:id]) 
        task.to_json
    end

    post '/tasks' do
        # project = Project.create(params)
        task = Task.create(params)
        task.to_json
    end

    patch '/tasks/:id' do
        task = Task.find(params[:id])
        task.update(
            name: params[:name],
            task_status: params[:task_status]
        )
        task.to_json
    end

    delete '/tasks/:id' do
        task = Task.find(params[:id])
        task.destroy
        task.to_json
    end

end