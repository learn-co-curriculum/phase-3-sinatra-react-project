class PlaylistController < Sinatra::Base
    set :default_content_type, 'application/json'
        
    # Add your routes here
       #Read list of playlists => sidebar
       get "/users/:id/playlists" do
        user = User.find(params[:id])
        playlists = user.playlists
        playlists.to_json
      end
  
      #Create new playlist
      post "/users/:user_id/playlists" do
        Playlist.create(
          user_id: params[:user_id], 
          creation_date: Date.new,
          last_update: Date.new,
          duration: 0,
          name: params[:name]
        )
      end


    #update playlist name
    patch "/users/:user_id/playlists/:playlist_id" do
      user = User.find(params[:user_id])
      playlist = user.playlists.find(params[:playlist_id])
      playlist.update(name: params[:name])
    end


    #Delete playlist
    delete "/users/:user_id/playlists/:playlist_id" do
      user = User.find(params[:user_id])
      playlist = user.playlists.find(params[:playlist_id])
      playlist.destroy 

      playlist.to_json
    end
  end