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

  #get favorited entries for a specific user - used in FavBrews.js
  get '/api/favorited_entries/users/:id' do
      user_id = params[:id].to_i
      favorited_entries = User.find(user_id).favorited_entries
      favorited_entries.to_json
  end

  #  post new entry for specific user w/ user id - used in Home.js
  post '/api/entries/user/:id' do
      id = params[:id].to_i
      newBrew = Entry.create(name: params[:name], image_url: params[:image_url], location: params[:location], description: params[:description], user_id: id )
      newBrew.to_json
  end

  #post create new user
  post '/api/users/:username' do
    new_user = User.create(params)
    new_user.to_json
  end

  #######post favorite an entry in my brews by clicking add favorite
  post '/api/favorites' do
    new_fav = Favorite.create(user_id: params[:user_id], entry_id: params[:entry_id])
    new_fav.to_json
    #Favorite.create(user_id: User.all.sample.id, entry_id: Entry.all.sample.id)
  end

  #delete a favorited entry for a user - used in FavBrewCard.js
  delete '/api/favorited_entries/entry-id/:id' do
    id = params[:id].to_i
    favorited_entry = Favorite.find_by(entry_id: id)
    favorited_entry.destroy
  end

  #########delete entire entry
  delete '/api/entries/entry-id/:id' do
    deleted_entry = Entry.find_by(id: params[:id].to_i)
    deleted_entry.destroy
  end

  ######## patch request to edit entries
  # patch '/api/entries/entry-id/:id' do
  #   update_entry = Entry.find_by(id: params[:id].to_i)
  #   update_entry.update(name:?,description:?,location:?, image_url:?)
  # end


end

