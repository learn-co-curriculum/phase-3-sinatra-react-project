class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
    User.all.to_json
  end

  get "/users?user_name=:user_name" do
    User.find_by(params[:user_name]).to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end


end
