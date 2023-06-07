require './models/user'
require './models/message'

class ApplicationController < Sinatra::Base

 # controllers/messages_controller.rb
 
  get '/messages' do
    messages = Message.all
    messages.to_json
  end
  post '/messages' do
    message = Message.create(text: params[:text])
    message.to_json
  end
end
end


