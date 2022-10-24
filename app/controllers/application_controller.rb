class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/albums" do
    albums = Album.pluck(:id, :name)
    albums.to_json
  end

  get "/albums/:id" do
    album = Album.find(params[:id])
    album.update_year
    album.to_json(include: :artist)
  end

  get "/artists/:id" do
    artist = Artist.find(params[:id])
    Artist.to_json
  end
end
