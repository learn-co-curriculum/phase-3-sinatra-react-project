class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/profiles" do
    profiles = Profile.all 
    profiles.to_json
  end

  get "/likes" do
    likes = Like.all
    likes.to_json
  end

  get "/users" do 
    users = User.all
    users.to_json
  end

end
