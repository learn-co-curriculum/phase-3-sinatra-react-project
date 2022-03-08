class AlbumController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/albums" do
    albums = Album.all
    albums.to_json
  end

  get "/albums/:id" do 
    album = Album.find(params[:id])
    album.to_json
  end

end
