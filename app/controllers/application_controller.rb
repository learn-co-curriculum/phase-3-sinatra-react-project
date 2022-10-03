class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # create
  post "/create" do
    decision = Decision.create(decision_params)
    status 201
    decision
  end

  post "/" do
    user = user.create(user_params)
    status 201
    user
  end
  
  # read
  # get "/decisions" do
  #   "Hello World"
  # end

  # get "/completed" do
  #   "Hello World"
  # end

  get '/' do
    users = users.all.order(:created_at)
    users.to_json
  end


  # update
  patch '/decision/:id' do
    decision = Decision.find(params[:id])
    decision.update(decision_params)
  end

  # delete
  delete '/decisions/:id' do
    decision = Decision.find(params[:id])
    decision.destroy 
    status 204 
  end 

private
  def decision_params
    {event_type:params[:event_type], 
    decided:params[:decided], 
    group_name:params[:group_name], 
    event_time:params[:event_time], 
    decision_deadline:params[:decision_deadline]}
  end

  def user_params
    {username:params[:username], 
    num_decisions_made:params[:num_decisions_made]}
  end

end



