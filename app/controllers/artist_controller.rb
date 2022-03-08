class ArtistController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/artists" do
    artists = Artist.all
    artists.to_json
  end

  get "/artists/:id" do 
    artist = Artist.find(params[:id])
    artist.to_json
  end

end