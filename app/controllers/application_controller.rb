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

  post '/messages' do
    # Create a new message record based on the request parameters
    message = Message.new(
      message_id: params[:message_id],
      from_number: params[:from_number],
      to_number: params[:to_number],
      user_id: params[:user_id],
      message_text: params[:message_text]
    )
  
    # Save the message record to the database
    if message.save
      status 201 # Created
      json message
    else
      status 400 # Bad Request
      json error: message.errors.full_messages
    end
  end



  patch '/messages' do
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



