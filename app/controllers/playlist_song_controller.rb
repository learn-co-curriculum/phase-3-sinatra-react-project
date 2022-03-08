class PlaylistSongController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    #create new playlist song
    post "/users/:user_id/playlists/:playlist_id" do
      PlaylistSong.create(
        playlist_id: params[:playlist_id],
        song_id: params[:song_id]
      )
      #update the duration of the playlist
      user = User.find(params[:user_id])
      playlist = user.playlists.find(params[:playlist_id])
      new_duration = playlist.songs.sum(:duration)
      playlist.update(duration: new_duration)

      #update last updated
      playlist.update(last_update: Time.new)
      
    end

    #Read songs from playlist
    get "/users/:user_id/playlists/:playlist_id" do
      user = User.find(params[:user_id])
      playlist = user.playlists.find(params[:playlist_id])
      playlist_songs = playlist.songs
      playlist_songs.to_json
    end

    #Delete song from playlist
    delete "/users/:user_id/playlists/:playlist_id/:song_id" do
      user = User.find(params[:user_id])
      playlist = user.playlists.find(params[:playlist_id])
      playlist_song = playlist.playlist_songs.find_by(song_id: params[:song_id])
      playlist_song.destroy

      #update the duration of the playlist
      new_duration = playlist.songs.sum(:duration)
      playlist.update(duration: new_duration)

      #update last updated
      playlist.update(last_update: Time.new)

      playlist_song.to_json
    end

  end