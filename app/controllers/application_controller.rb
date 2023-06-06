class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  require './models/user'
  require './models/message'
  
  # 
  get "/api/users" do
    user = User.new(name: params[:name])
     if user.save
      #return a JSON response, redirect, or render a template
     else
      # handle validation errors or other failure cases
     end
  end

# retrieve messages for a specific user
  get "/api/users/:user_id/messages" do
    user = users.find(params[:user_id])
    users.to_json
  end

  # update a message
  put "/api/messages/:message_id" do
    message = Message.find(params[:message_id])

     if message.updated(content: params[:content])

end


