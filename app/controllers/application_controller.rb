class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/albums" do
    albums = Album.pluck(:id, :name)
    albums.sort_by! { |a| a[1] }.to_json
  end

  get "/albums/:id" do
    album = Album.find(params[:id])
    album.update_year
    album.change_latest_listen
    album.to_json(include: %i[artist listen_events])
  end

  get "/most_listens/" do
    response = ListenEvent.most_listens
    response.to_json
  end

  get "/listens/:id" do
    listens = ListenEvent.where(album_id: params[:id])
    orderedListens = listens.order(:updated_at)
    orderedListens.to_json(include: :album)
  end
end
