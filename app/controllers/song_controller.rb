class SongController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here

    #Read (all)
    get "/songs" do
        songs = Song.all
        songs.to_json
    end

    #Read (one)
    get '/songs/:id' do
        Song.find(params[:id]).to_json
    end
    
  
  end