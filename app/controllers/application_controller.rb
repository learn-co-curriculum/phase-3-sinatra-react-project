class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/profiles" do
    profiles = Profile.all.shuffle 
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

  get "/matches" do
    match_array = Like.matching_profiles
    matches = match_array.collect do |match|
      match.profile
    end
    matches.to_json
  end

  post "/like" do
    user = User.find(params[:user_id])
    profile = Profile.find(params[:profile_id])

    Like.like_function(user, profile)
  end

  post "/dislike" do
    user = User.find(params[:user_id])
    profile = Profile.find(params[:profile_id])

    Like.dislike_function(user, profile)
  end

  patch "/undo" do
    user = User.find(params[:user_id])
    profile = Profile.find(params[:profile_id])

    Like.undo_function(user, profile)
  end

end
