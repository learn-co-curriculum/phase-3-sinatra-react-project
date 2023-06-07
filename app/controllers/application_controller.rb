require './models/user'
require './models/message'

class ApplicationController < Sinatra::Base
  before do
    # Implement user authentication logic here (e.g., checking authentication token)
  end

  # controllers/messages_controller.rb

  get '/messages' do
    messages = Message.all
    messages.to_json
  end

  post '/messages' do
    user = User.find_by(id: params[:user_id])
    message = user.messages.create(text: params[:text])
    message.to_json
  end
 
end


