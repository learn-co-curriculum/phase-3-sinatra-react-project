class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #Read
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/api/users" do
    users = User.all 
    users.to_json(include: :songs)
  end

  get "/api/users/:id" do
    users = User.find(params[:id])
    users.to_json(include: :songs)
  end


end
