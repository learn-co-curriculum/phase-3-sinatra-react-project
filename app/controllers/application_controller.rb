class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/albums" do
    albums = Album.pluck(:id, :name)
    albums.sort_by! { |a| a[1] }.to_json
  end

  get "/artists" do
    artists = Artist.pluck(:id, :name)
    artists.sort_by! { |a| a[1] }.to_json
  end

  get "/albums/:id" do
    album = Album.find(params[:id])
    album.update_year
    album.change_latest_listen
    album.to_json(include: %i[artist listen_events])
  end

  get "/artists/:id" do
    response = Artist.find(params[:id])
    Artist.find(params[:id]).albums.map { |a| a.update_year }
    response.to_json
  end

  get "/artistInfo/:id" do
    response = Artist.find(params[:id]).artist_fetch
    response.to_json
  end

  get "/artistAlbum/:id" do
    response = Album.where(artist_id: params[:id])
    chrono = response.order(:year)
    chrono.to_json
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

  post "/listens/create" do
    Album.find(params[:album_id]).update(latest_listen: params[:dateTime])
    newListen =
      ListenEvent.create(
        album_id: params[:album_id],
        created_at: params[:dateTime],
        updated_at: params[:dateTime]
      )
    newListen.to_json
  end

  get "/search/value=:class&search=:term" do
    search = "name LIKE (?)", "%#{params[:term]}%"

    response = params[:class].constantize.where(search)
    if (params[:class] == "Artist")
      response.to_json
    else
      response.to_json(include: :artist)
    end
  end

  delete "/listen_events/:id" do
    event = ListenEvent.find(params[:id])
    event.destroy
  end
end
