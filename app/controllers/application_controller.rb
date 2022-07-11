class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/matches/:id" do
    currentUserMatches = User.find(params[:id]).all_matches
    currentUserMatches.to_json
  end

  get "/profiles/:id" do
    profile = Profile.find(params[:id])
    profile.to_json
  end

  get "/users" do
    User.all.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

end
