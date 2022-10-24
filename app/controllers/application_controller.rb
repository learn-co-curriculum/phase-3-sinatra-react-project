class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/albums" do
    albums = Album.pluck(:id, :name)
    albums.to_json
  end

  get "/albums/:id" do
    album = Album.find(params[:id])
    album.to_json
  end
end
