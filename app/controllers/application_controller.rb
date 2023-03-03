class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
    # returns all the users
  get "/" do 
    all_users = User.all
    all_users.to_json
  end
  
   #returns all the pets for a specific user
   get "/pets/:username" do
    single_user = User.find_by(username:params[:username])
    single_user.pets.to_json 
  end

end
