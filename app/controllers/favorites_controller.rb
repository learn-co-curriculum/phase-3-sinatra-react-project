class FavoritesController < ApplicationController

     #get favorited entries for a specific user - used in FavBrews.js
     get '/api/favorited_entries/users/:id' do
        user_id = params[:id].to_i
        favorited_entries = User.find(user_id).favorited_entries
        favorited_entries.to_json
    end

    #post favorite an entry in my brews by clicking add favorite
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
end