class ApplicationController < Sinatra::Base
  before do
    # Implement user authentication logic here (e.g., checking authentication token)
  end

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



