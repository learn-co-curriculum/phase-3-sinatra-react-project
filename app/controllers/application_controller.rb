# require '/models/user'
# require '/models/message'

class ApplicationController < Sinatra::Base
  before do
    # Implement user authentication logic here (e.g., checking authentication token)
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/messages' do
    messages = Message.all
    messages.to_json
  end

  post '/users' do
  end

    # Create a new message record based on the request parameters
    post '/messages' do
      message = Message.create(
        message_text: params[:message_text],
        user_id: params[:user_id],
        from_number: params[:from_number],
        to_number: params[:to_number],
        created_at: params[:created_at],
        updated_at:params[:updated_at]
      )
      message.to_json
    end
   

 patch '/messages/:id' do
    message = Message.find(params[:id])
    message.update(
      message_text: params[:message_text],
      user_id: params[:user_id]
    )
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



