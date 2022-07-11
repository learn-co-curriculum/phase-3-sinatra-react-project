class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/matches" do
    matches = Match.all
    matches.to_json
  end

  get "/profiles/:id" do
    profile = Profile.find(params[:id])
    profile.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

end
