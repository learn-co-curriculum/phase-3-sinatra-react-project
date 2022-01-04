class TaskController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    get "/tasks" do
      Task.all.to_json
    end
  
    get "/tasks/:id" do
      Task.find(params[:id]).to_json
    end
  
    post "/tasks" do
      Task.create(
        user_id: params[:user_id],
        pet_id: params[:pet_id],
        task_name: params[:task_name],
        task_due_date: params[:task_due_date],
        task_end_date: params[:task_end_date],
        task_location: params[:task_location]
      ).to_json
    end
  
    delete '/tasks/:id' do
      task = Task.find(params[:id])
      task.destroy
      task.to_json
    end
  
  end
  