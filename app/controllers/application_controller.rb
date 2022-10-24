# require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #get all entries from all users - for global-brews tab
 get '/api/entries' do
    all_entries = Entry.all
    all_entries.to_json
 end

 #get specific user's entries based on user id
 get '/api/entries/user/:id' do
    id = params[:id].to_i
    user_entries = Entry.all.filter { |entry| entry.user_id == id}
    user_entries.to_json
 end

 #get username based on user id: run fetch from front end to access user instance
 get '/api/users/user-id/:id' do
    user_id = params[:id].to_i
    user = User.all.find_by(id: user_id) #returns user instance from user_id
    user.to_json
 end

 get '/api/users' do
    all_users = User.all
    all_users.to_json
end

 #get favorited entries for a specific user
 get '/api/favorited_entries/users/:id' do
    user_id = params[:id].to_i
    favorited_entries = User.find(user_id).favorited_entries
    favorited_entries.to_json
 end

#  post an entry to ALL entries list
 post '/api/entries' do
  #create new entry w/ form data
  newBrew = Entry.create(params)
  newBrew.to_json
end

end

