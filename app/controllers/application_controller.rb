# require '/models/user'
# require '/models/message'

class ApplicationController < Sinatra::Base
  before do
    # Implement user authentication logic here (e.g., checking authentication token)
  end

  get '/messages' do
    messages = Message.all
    messages.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  post '/messages' do
    user = User.find_by(id: params[:user_id])
    message = user.messages.create(text: params[:text])
    message.to_json
  end

  delete '/messages/:id' do
    message = Message.find_by(id: params[:id])
    if message
      message.destroy
      "Message deleted successfully"
    else
      status 404
      "Message not found"
    end
  end

end 



